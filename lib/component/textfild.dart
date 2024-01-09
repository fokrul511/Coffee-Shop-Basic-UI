import 'package:flutter/material.dart';
final TextEditingController textEditingController = TextEditingController();
var textFild =  TextField(
  controller: textEditingController,
  decoration: const InputDecoration(
      filled: true,
      fillColor: Color.fromRGBO(55, 57, 74, 56),
      prefixIcon: Icon(
        Icons.search,
        color: Colors.white,
        size: 30,
      ),
      hintText: 'Find Your Coffee',
      hintStyle: TextStyle(color: Colors.white),
      label: Text(
        'Find Your Coffee',
        style: TextStyle(color: Colors.white),
      ),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          borderSide: BorderSide(color: Colors.white10)),
      enabled: true,
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          borderSide: BorderSide(color: Colors.transparent)),
      border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(30)))),
);
