import 'package:flutter/material.dart';
import './ui/my_custom_form.dart';
import './ui/register.dart';
import './ui/Tabbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      debugShowCheckedModeBanner: false,
      routes:{
       "/" : (context) => MycustomForm(),
       "second" : (context) => Register(),
       "Third" : (context) => TabDemo(),
        },
    );
  }
}
