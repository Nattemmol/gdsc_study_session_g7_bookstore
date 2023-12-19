import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nate app',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        //useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  //const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('hello users'),
          backgroundColor: Colors.orange,
        ),
        body: _TextInputWiget());
  }
}

class _TextInputWiget extends StatefulWidget {
  @override
  _TextInputWigetState createState() => _TextInputWigetState();
}

// ignore: unused_element
class _TextInputWigetState extends State<_TextInputWiget> {
  get controller => null;

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const TextField(
      //controller: this.controller,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.message),
          labelText: "type a message here man :",
          suffixIcon: IconButton(
            icon: Icon(Icons.send),
            splashColor: Colors.blue,
            onPressed: () {},
          )),
    );
  }
}
