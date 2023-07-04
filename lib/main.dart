import 'package:flutter/material.dart';

void main() {
  runApp(
    const Destini(),
  );
}

class Destini extends StatelessWidget {
  const Destini({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.purple,
        appBar: AppBar(
            backgroundColor: Colors.black12,
            title: const Center(
              child: Text('Destini'),
            )),
        body: const SafeArea(
          child: MyApp(),
        ),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  _MyAppPageState createState() => _MyAppPageState();
}

class _MyAppPageState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/image.jpg"), fit: BoxFit.cover),
        // child: Column(children: [Image.asset("images/image.jpg")]),
      ),
      child: Column(
        children: const <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  'Select your character',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(onPressed: onPressed, child: child),
          ))
        ],
      ),
    );
  }
}
