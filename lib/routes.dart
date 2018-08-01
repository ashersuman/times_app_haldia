import 'package:flutter/material.dart';
import 'package:tabloid/login.dart';
import 'package:tabloid/homepage.dart';

final routes = {
  '/login':         (BuildContext context) => new LoginPage(),
  '/home':         (BuildContext context) => new HomePage(),
  //'/editor':    ()
  '/' :          (BuildContext context) => new LoginPage(),
};