import 'package:flutter/material.dart';
import 'package:todoy/widget/Textform.dart';
import 'package:todoy/widget/elevated.dart';
import 'package:todoy/widget/signup_form.dart';

class EmailScreen extends StatefulWidget {
  const EmailScreen({super.key});

  @override
  State<EmailScreen> createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const Text("Create account"),
          const Text(
            "Your work faster and structured with Todyapp",
            style: TextStyle(color: Colors.black26),
          ),
          Form(
              key: formKey,
              child: Column(
                children: [
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
                      hintText: "Username", autofillHints: [AutofillHints.newUsername, AutofillHints.email],),
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
                      hintText: "Password", autofillHints: [AutofillHints.password],)
                ],
              )),
          const Spacer(),
          Elevated(
            icons: null,
            text: "Next",
            width: 300.0,
            height: 50.0,
            backgroundColor: Theme.of(context).colorScheme.primary,
            textColor: Theme.of(context).colorScheme.secondary,
            onPressed: () {},
          ),
        ],
      )),
    );
  }
}
