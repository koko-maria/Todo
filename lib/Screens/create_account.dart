import 'package:flutter/material.dart';
import 'package:text_divider/text_divider.dart';
import 'package:iconly/iconly.dart';
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
                    text: "Welcome to ",
                    style: TextStyle(fontFamily: "SF-Pro-Display")),
                TextSpan(
                    text: "TodyApp",
                    style: TextStyle(
                        color: Colors.amber, fontFamily: "SF-Pro-Display"))
              ]),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset("asset/image/Onboardingimage.png",height: 350),
            Elevated(
              icons: IconlyBold.message,
              text: "Continue with email",
              width: 342.0,
              backgroundColor: Theme.of(context).colorScheme.primary,
              height: 70, textColor: Theme.of(context).colorScheme.background,onPressed: () {  },
            ),
            const SizedBox(
              height: 15,
            ),
            const TextDivider(
              text: Text(
                "or continue with",
                style: TextStyle(color: Colors.black),
              ),
              direction: Direction.horizontal,
              color: Colors.black26,
            ), const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Elevated(
                    icons: IconlyBold.show,
                    text: "Facebook",
                    width: 100,
                    height: 50.0,
                    backgroundColor: Theme.of(context).colorScheme.background, textColor: Theme.of(context).colorScheme.onPrimaryContainer, onPressed: () {  },
                  ),  Elevated( onPressed: () {  },
                    icons: IconlyBold.show,
                    text: "Google",
                    width: 100,
                    height: 50.0,
                    backgroundColor: Theme.of(context).colorScheme.background, textColor: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
