import 'package:flutter/material.dart';
import 'package:text_divider/text_divider.dart'; import 'package:iconly/iconly.dart';
import 'package:todoy/widget/elevated.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: const TextSpan(style: TextStyle(fontSize: 26), children: [
                TextSpan(
                    text: "Welcome to",
                    style: TextStyle(fontFamily: "SF-Pro-Display")),
                TextSpan(
                    text: "TodoApp",
                    style: TextStyle(
                        color: Colors.amber, fontFamily: "SF-Pro-Display"))
              ]),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset("asset/image/Onboardingimage.png"),
            const Elevated(icons: IconlyBold.message, text: "Continue"),
            const TextDivider(
              text: Text(
                "or",
                style: TextStyle(color: Colors.black),
              ),
              direction: Direction.horizontal,
              color: Colors.black26,
            )
          ],
        ),
      ),
    );
  }
}
