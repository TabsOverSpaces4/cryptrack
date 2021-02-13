import 'package:flutter/material.dart';
import 'package:test_application/pages/LSOptions.dart';
import 'package:test_application/pages/Signup.dart';
import 'package:test_application/pages/Signin.dart';
import 'package:test_application/pages/profile.dart';
import 'package:test_application/pages/info.dart';
import 'package:test_application/pages/loading.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/login',
      routes: {
        '/': (context) => Loading(),
        '/login': (context) => Login(),
        '/signin': (context) => SignIn(),
        '/signup': (context) => SignUp(),
        '/profile': (context) => Profile(),
        '/info': (context) => Info(),
      },
    ));


