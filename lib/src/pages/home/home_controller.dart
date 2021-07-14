import 'package:flutter/material.dart';

class HomeController {
  BuildContext context;

  Future init(BuildContext context) {
    this.context = context;
  }

  void gotToLoginPage() {
    Navigator.pushNamed(context, 'login');
  }
}
