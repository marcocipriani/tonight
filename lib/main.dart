import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tonight Home',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Tonight Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: Container(
            color: Colors.teal,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Tonight',
                      style: TextStyle(
                          fontFamily: 'Alkatra',
                          color: Colors.white,
                          fontSize: 48.0)),
                  Image.asset('assets/images/peeps/peep-2.png',
                      width: 128.0, semanticLabel: 'User picture'),
                  Container(
                    color: Colors.white,
                    child: ListTile(
                      title: Text('username'),
                      tileColor: Colors.red,
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: ListTile(
                      title: Text('password'),
                      tileColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
