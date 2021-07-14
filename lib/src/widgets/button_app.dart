import 'package:flutter/material.dart';

import 'package:uber_app/src/utils/colors.dart' as utils;

class ButtonApp extends StatelessWidget {
  Color color;
  Color textColor;
  String text;
  IconData icon;
  Function onPressed;

  ButtonApp({
    this.color = Colors.black,
    this.textColor = Colors.white,
    this.icon = Icons.arrow_forward_ios,
    this.onPressed,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              alignment: Alignment.center,
              height: 50,
              child: Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              alignment: Alignment.centerRight,
              height: 50,
              child: CircleAvatar(
                radius: 15,
                child: Icon(
                  icon,
                  color: utils.Colors.uberCloneColor,
                ),
                backgroundColor: Colors.white,
              ),
            ),
          )
        ],
      ),
      style: ElevatedButton.styleFrom(
        primary: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
