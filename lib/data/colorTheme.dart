import 'package:flutter/material.dart';

class ColorThemeModel {
  const ColorThemeModel({required this.colors});
  final Color colors;
}

class Todo {
  final Color colors;
  final String title; final DateTime date;
  Todo(this.title, this.date, {required this.colors});
}
