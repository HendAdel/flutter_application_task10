import 'package:flutter/material.dart';
import 'package:flutter_application_task10/sql_helper.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: FloatingActionButton(
          onPressed: () {
            var sqlHelper = SqlHelper();
            // sqlHelper.db.
          },
        ),
      ),
    );
  }
}
