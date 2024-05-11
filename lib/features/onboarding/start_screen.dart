import 'package:flutter/material.dart';
import 'package:flutter_practice/features/onboarding/page_one.dart';
import 'package:flutter_practice/utils/strings/my_images.dart';
import 'package:flutter_practice/utils/strings/text_string.dart';
import 'package:flutter_practice/utils/styles/my_styles.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(MyImage().logo, height: 150, width: 150,color: MyStyles().appColor),
            Text(TextStrings().home, style: MyStyles().heading),
            Text(TextStrings().decor, style: MyStyles().heading),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(TextStrings().loream,
                  style: MyStyles().textStyleBlack,
                  textAlign: TextAlign.center),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => const PageOne()));
              },
              style: MyStyles().buttonAppStyle,
              child: Text(TextStrings().login,
                  style: MyStyles().textStyleWhite),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => const PageOne()));
              },
              style: MyStyles().buttonLightStyle,
              child: Text(TextStrings().signup,
                  style: MyStyles().textStyleAppColor),
            )
          ],
        ),
      ),
    );
  }
}
