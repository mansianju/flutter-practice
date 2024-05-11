import 'package:flutter/material.dart';
import 'package:flutter_practice/utils/strings/my_images.dart';
import 'package:flutter_practice/utils/strings/text_string.dart';
import 'package:flutter_practice/utils/styles/my_styles.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(
          top: 0,
          left: 0,
          child: Container(
            margin: const EdgeInsets.only(top: 20),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 1.6,
            decoration: BoxDecoration(
              color: MyStyles().lightAppColor, // Change the color as needed
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30), // Adjust the radius as needed
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: Container(
              clipBehavior: Clip.hardEdge,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.6,
              // Set height to half of screen height
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft:
                      Radius.circular(45), // Adjust the radius as needed
                ),
              ),
              child: Image.asset(MyImage().pageOne, fit: BoxFit.fill)),
        ),
        Positioned(
            top: 0,
            right: 0,
            child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 26),
                child: Row(
                  children: [
                    Text(TextStrings().skip, style: MyStyles().textStyleBlack),
                    const Icon(
                      Icons.arrow_forward,
                      size: 18,
                    )
                  ],
                ))),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.023,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(TextStrings().comfortableSpace, style: MyStyles().heading),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    TextStrings().loream,
                    style: MyStyles().textStyleBlack,
                    textAlign: TextAlign.center,
                  )),
              const SizedBox(height: 22),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                     children: [
                       Container(
                         height: 8,
                         width: 50,
                         margin: const EdgeInsets.only(right: 3),
                         decoration: BoxDecoration(
                             color: MyStyles().appColor,
                             borderRadius: const BorderRadius.all(Radius.circular(20))),
                       ),
                       Container(
                         height: 8,
                         width: 15,
                         margin: const EdgeInsets.only(right: 3),
                         decoration: BoxDecoration(
                             color: MyStyles().lightAppColor,
                             borderRadius: const BorderRadius.all(Radius.circular(20))),
                       ),
                       Container(
                         height: 8,
                         width: 15,
                         margin: const EdgeInsets.only(right: 3),
                         decoration: BoxDecoration(
                             color: MyStyles().lightAppColor,
                             borderRadius: const BorderRadius.all(Radius.circular(20))),
                       ),
                       Container(
                         height: 8,
                         width: 15,
                         margin: const EdgeInsets.only(right: 3),
                         decoration: BoxDecoration(
                             color: MyStyles().lightAppColor,
                             borderRadius: const BorderRadius.all(Radius.circular(20))),
                       )

                     ],
                    ),
                    ElevatedButton(onPressed: (){},
                        style: MyStyles().buttonAppStyle,
                        child: Text(TextStrings().next,style: MyStyles().textStyleWhite,))
                  ],
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
