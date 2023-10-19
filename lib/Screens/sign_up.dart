import 'package:flutter/material.dart';
import 'package:todoy/widget/Textform.dart';
import 'package:todoy/widget/elevated.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Center(
            child: Text("Create account",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontFamily: "SF-Pro-Display",
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                    )),
          ),
          const Center(
            child: Text(
              "Your work faster and structured with Todyapp",
              style: TextStyle(
                color: Colors.black26,
                fontFamily: "SF-Pro-Display",
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Username",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontFamily: "SF-Pro-Display",
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                          )),
                  const SizedBox(
                    height: 11,
                  ),
                  TextForm(
                    controller: userNameController,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Enter Username";
                      } else {
                        return null;
                      }
                    },
                    keyInputType: TextInputType.emailAddress,
                    hintText: "Username",
                    autofillHints: const [
                      AutofillHints.newUsername,
                      AutofillHints.email
                    ],
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Text("Password",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontFamily: "SF-Pro-Display",
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                          )),
                  const SizedBox(
                    height: 11,
                  ),
                  TextForm(
                    controller: passwordController,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Enter Password";
                      } else {
                        return null;
                      }
                    },
                    keyInputType: TextInputType.visiblePassword,
                    hintText: "Password",
                    autofillHints: const [AutofillHints.password],
                  )
                ],
              )),
          const Spacer(),
          Center(
            child: Elevated(
              icons: null,
              text: "Next",
              width: 300.0,
              height: 50.0,
              backgroundColor: Theme.of(context).colorScheme.primary,
              textColor: Theme.of(context).colorScheme.background,
              onPressed: () {},
            ),
          ),
        ],
      )),
    );
  }
}
