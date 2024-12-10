// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

  void _navigate() {
    Navigator.push(context, MaterialPageRoute<void>(
        builder: (BuildContext context) {
          return Scaffold(
            body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("My new page"),
                    ElevatedButton(
                      child: Text("Cancel"),
                      onPressed: () {
                        Navigator.pop(context);
                      })],
                )
            )
          );
        }
    ));
  }

  void _navigateBt2() {
    Navigator.push(context, MaterialPageRoute<void>(
        builder: (BuildContext context) {
          return Scaffold(
            body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("My new page 2"),
                    ElevatedButton(
                      child: Text("Cancel 2"),
                      onPressed: () {
                        Navigator.pop(context);
                      })],
                )
            )
          );
        }
    ));
  }

  void _navigateBt3() {
    Navigator.push(context, MaterialPageRoute<void>(
        builder: (BuildContext context) {
          return Scaffold(
            body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("My new page 3"),
                    ElevatedButton(
                      child: Text("Cancel 3"),
                      onPressed: () {
                        Navigator.pop(context);
                      })],
                )
            )
          );
        }
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Página Inicial',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16), // Adds spacing between elements
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // Centers the buttons horizontally
              children: [
                ElevatedButton(
                  onPressed: _navigateBt2,
                  child: const Text("Botão 2"),
                ),
                const SizedBox(width: 16), // Adds spacing between buttons
                ElevatedButton(
                  onPressed: _navigateBt3,
                  child: const Text("Botão 3"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
