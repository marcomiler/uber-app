import 'package:flutter/material.dart';
import 'package:uber_app/src/providers/auth_provider.dart';

class LoginController {
  BuildContext context;
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  AuthProvider _authProvider;

  Future init(BuildContext context) {
    this.context = context;
    _authProvider = new AuthProvider();
  }

  void login() async {
    String email = emailController.text.trim();
    String password = passwordController.text;
    //print(email + password);
    try {
      bool isLogin = await _authProvider.loginFirebase(email, password);

      if (isLogin) {
        print('el usuario esta logueado');
      } else {
        print('el usuario no se puso loguear');
      }
    } catch (error) {
      print('Error xd : $error');
    }
  }

  void goToRegisterPage() {
    Navigator.pushNamed(context, 'register');
  }
}
