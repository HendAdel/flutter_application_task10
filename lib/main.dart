import 'package:flutter/material.dart';
import 'package:flutter_application_task10/pages/home.dart';
import 'package:flutter_application_task10/sql_helper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  var db = SqlHelper();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}
