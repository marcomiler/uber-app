import 'package:flutter/material.dart';

import 'package:uber_app/src/pages/home/home_controller.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class HomePage extends StatelessWidget {
  final HomeController _controller = new HomeController();

  @override
  Widget build(BuildContext context) {
    _controller.init(context);

    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.black, Colors.black87],
            ),
          ),
          child: Column(
            children: [
              _bannerApp(context),
              SizedBox(
                height: 50,
              ),
              _textSelectYourRol(),
              SizedBox(
                height: 30,
              ),
              _imageTypeUser("assets/images/pasajero.png"),
              SizedBox(
                height: 10,
              ),
              _textTypeUser('Cliente'),
              SizedBox(
                height: 30,
              ),
              _imageTypeUser("assets/images/driver.png"),
              SizedBox(
                height: 10,
              ),
              _textTypeUser("Conductor")
            ],
          ),
        ),
      ),
    );
  }

  Widget _bannerApp(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return ClipPath(
      clipper: DiagonalPathClipperTwo(),
      child: Container(
        color: Colors.white,
        height: height * 0.30,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "assets/images/logo_app.png",
              width: 150,
              height: 100,
            ),
            Text(
              'Fácil y Rápido',
              style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 22,
                  fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
    );
  }

  Widget _textSelectYourRol() {
    return Text(
      "SELECCIONA TU ROL",
      style: TextStyle(color: Colors.white),
    );
  }

  Widget _imageTypeUser(String img) {
    return GestureDetector(
      onTap: _controller.gotToLoginPage,
      child: CircleAvatar(
        backgroundImage: AssetImage(img),
        radius: 50,
        backgroundColor: Colors.grey[900],
      ),
    );
  }

  Widget _textTypeUser(String typeUser) {
    return Text(
      typeUser,
      style: TextStyle(color: Colors.white, fontSize: 16),
    );
  }
}
