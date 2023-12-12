import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar(String title) {
  return AppBar(
    backgroundColor: Colors.white,
    title: Text(
      title,
      style: TextStyle(color: Colors.black),
    ),
  );
}

Widget answerCard(String text, BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.1,
    width: MediaQuery.of(context).size.width,
    child: Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      elevation: 3.5,
      color: const Color.fromARGB(255, 255, 255, 255),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.black, fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ),
  );
}

TextStyle headerStyle() {
  return TextStyle(
      color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold);
}

TextStyle normalTextStyle() {
  return TextStyle(
      color: Colors.black, fontSize: 20, fontWeight: FontWeight.normal);
}
