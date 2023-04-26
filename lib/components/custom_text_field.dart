/*
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({this.onChanged, this.hintText, this.label, this.obscureText, this.inputType});

  Function(String)? onChanged;
  String? hintText;
  String? label;
  bool? obscureText;
  TextInputType? inputType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText!,
      keyboardType: inputType,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        label: Text(label.toString()),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          // border دي الحاله الجينرال للبوردر
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          // enabledBorder دي علشان اللون يظهرلي لما بعطي لون للفورم
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}

 */
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {this.hintText, this.inputType, this.onChanged, this.obscureText = false});

  Function(String)? onChanged;
  String? hintText;
  TextInputType? inputType;
  bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText!,
      onChanged: onChanged,
      keyboardType: inputType,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.circular(8),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
