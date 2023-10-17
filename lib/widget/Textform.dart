import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  const TextForm(
      {super.key,
      required this.controller,
      required this.validator,
      required this.keyInputType, required this.hintText, required this.autofillHints});
  final TextEditingController controller;
  final String? Function(String value) validator;
  final TextInputType keyInputType; final String hintText; final Iterable<String> autofillHints;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 1,
      validator: (value) {
        validator;
        return null;
        
      },
      textCapitalization: TextCapitalization.characters,
      keyboardType: keyInputType,
      controller: controller,
      autofillHints: autofillHints,
      decoration:  InputDecoration(
          border: const OutlineInputBorder(
              borderSide: BorderSide(
                  color: Color(0xffF6F7F9),
                  style: BorderStyle.solid,
                  width: 15),
              borderRadius: BorderRadius.all(Radius.circular(12))),
          filled: true,
          fillColor: const Color(0xffF6F7F9),
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.black45),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0)),
    );
  }
}
