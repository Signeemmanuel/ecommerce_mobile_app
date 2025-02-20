import 'package:flutter/material.dart';

class TOutlinedButtonThemeData {
  TOutlinedButtonThemeData._();

  /// ---light theme
  static OutlinedButtonThemeData lightOutlinedButtonThemeData = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.black,
      side: BorderSide(color: Colors.blue),
      textStyle: TextStyle(
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.w400
      ),
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))
    )
  );

  /// ---dark theme
  static OutlinedButtonThemeData darkOutlinedButtonThemeData = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.white,
          side: BorderSide(color: Colors.blueAccent),
          textStyle: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w400
          ),
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))
      )
  );
}