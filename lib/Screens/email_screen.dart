import 'package:flutter/material.dart';
import 'package:todoy/widget/Textform.dart';
import 'package:todoy/widget/elevated.dart';

class EmailScreen extends StatefulWidget {
  const EmailScreen({super.key});

  @override
  State<EmailScreen> createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  final mailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text("Welcome Back!",
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
            Text("Email Address",
                
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontFamily: "SF-Pro-Display",
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    )),
            const SizedBox(
              height: 11,
            ),
            TextForm(
              controller: mailController,
              keyInputType: TextInputType.emailAddress,
              hintText: "johnDoe@gmail.com",
              validator: (value) {
                if (value.isEmpty) {
                  return "Enter Username";
                }
                return null;
              }, autofillHints: [AutofillHints.email],
            ),
            const Spacer(),
            Center(
              child: Elevated(
                icons: null,
                text: "Next",
                width: 320.0,
                height: 70.0,
                backgroundColor: Theme.of(context).colorScheme.primary,
                textColor: Theme.of(context).colorScheme.background,
                onPressed: () {},
              ),
            ),
          ],
        ),
      )),
    );
  }
}
