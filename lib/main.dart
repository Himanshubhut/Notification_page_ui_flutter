import 'package:flutter/material.dart';
import 'package:loginform/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "login",
    routes: {'login': (context) => MyLogin()},
  ));
}
