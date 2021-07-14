import 'package:flutter/material.dart';
import 'package:uber_app/src/providers/auth_provider.dart';

class RegisterController {
  BuildContext context;
  TextEditingController emailController = new TextEditingController();
  TextEditingController usernameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController confirmPasswordController = new TextEditingController();

  AuthProvider _authProvider;

  Future init(BuildContext context) {
    this.context = context;
    _authProvider = new AuthProvider();
  }

  void register() async {
    String username = usernameController.text;
    String email = emailController.text.trim();
    String password = passwordController.text;
    String confirmPassword = confirmPasswordController.text;
    //print(email + password);

    if (username.isEmpty &&
        email.isEmpty &&
        password.isEmpty &&
        confirmPassword.isEmpty) {
      print('El usuario no ha ingresado datos');
      return;
    }
    if (confirmPassword != password) {
      print('Las contraseñas no coinciden');
      return;
    }

    if (password.length < 6) {
      print('el password debe tener al menos 6 caracteres');
      return;
    }

    try {
      bool isRegister = await _authProvider.registerFirebase(email, password);

      if (isRegister) {
        print('el usuario se registro correctamente');
      } else {
        print('el usuario no se puso registrar');
      }
    } catch (error) {
      print('Error xd : $error');
    }
  }
}
