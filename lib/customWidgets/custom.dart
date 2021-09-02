import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  bool obscureText ;
  final String hint;
  final IconData icon;
  CustomTextField({required this.hint,required this.icon,required this.obscureText});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        style: TextStyle(
          color: Colors.blue.shade700
        ),
        obscureText: obscureText,
        cursorColor: Colors.blue,
        decoration: InputDecoration(
          hintText: hint,
          prefixIcon: Icon(
            icon,
            color: Colors.grey.shade800,
          ),
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.blue.shade900)),
        ),
      ),
    );
  }
}
