import 'package:flutter/material.dart';

class CinsiyetWidget extends StatelessWidget {

  final IconData iconData;
  final String cinsiyet;
  CinsiyetWidget({this.cinsiyet, this.iconData});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconData,
            size: 50, color: Colors.black54),
        SizedBox(
          height: 10,
        ),
        Text(
          cinsiyet,
          style: TextStyle(
              color: Colors.black54,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

class MyContainer extends StatelessWidget {
  final Color colorsAll;
  final Widget child;
  final Function onPress;

  MyContainer({this.colorsAll = Colors.white, this.child, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: child,
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colorsAll,
        ),
      ),
    );
  }
}