import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
        title: "Flutter Playground",
        home: Scaffold(
            appBar: AppBar(
              title: const Text("App Bar"),
            ),
            drawer: const Drawer(
              child: Column(
                children: [
                  Text("Opção 1"),
                  Text("Opção 1"),
                  Text("Opção 1"),
                  Text("Opção 1")
                ],
              ),
            ),
            body: Align(
              alignment: Alignment.topCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Transform.scale(scale: 2, child: const Text(
                          overflow: TextOverflow.ellipsis,
                          "Texto Médio"
                    )),
                    const Padding(padding: EdgeInsets.all(20.0)),
                    const Divider(),
                    Transform.scale(scale: 3, child: const Text(
                        overflow: TextOverflow.ellipsis,
                        "Texto Principal"
                    )),
                    const Padding(padding: EdgeInsets.all(20.0)),
                    const Divider(),
                    Transform.scale(scale: 1, child: const Text(
                        overflow: TextOverflow.ellipsis,
                        "Texto Menor"
                    ))
                  ]
              ),
            )
        )
    );
  }
}