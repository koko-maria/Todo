import 'package:flutter/material.dart';
import 'package:todoy/widget/Textform.dart';

class SignUpForm extends StatelessWidget {
  SignUpForm({super.key, required this.controller});
  final TextEditingController controller;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Column(
          children: [ 
       
          ],
        ));
  }
}
