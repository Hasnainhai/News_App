import 'package:flutter/material.dart';

class TabsWidget extends StatelessWidget {
  const TabsWidget({
    super.key, required this.text, required this.ontap, required this.color, required this.fontSize,
  });
final String text;
final Function ontap;
final Color color;
final double fontSize;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:
    (){
      ontap();
    },
      
      child: Container(
        decoration: BoxDecoration(
           color: color,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(padding: const EdgeInsets.all(8.0),
        
        child: Text(text,
        style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.w600
        ),
        ),),
      ),
    );
  }
}