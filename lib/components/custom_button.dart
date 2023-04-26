import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({this.ontap, required this.text}) ;
   VoidCallback? ontap;
String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 65.0,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Center(
          child: Text(text ,style: TextStyle(
            color: Colors.white,
            fontSize: 24.0
          ),),
        ),
      ),
    );
  }
}
