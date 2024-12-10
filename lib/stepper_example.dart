// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyApp();

}

class _MyApp extends State<MyApp> {
  var _currentStep = 0;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title : "Flutter Playground",
        home: Scaffold(
            appBar: AppBar(title: Text("Flutter Playground")),
            body: Stepper(
              type: StepperType.vertical,
                currentStep: _currentStep,
              onStepContinue: _currentStep < 3 ?
                () => setState(() => _currentStep += 1) : null,
              onStepCancel: _currentStep > 0 ?
                  () => setState(() => _currentStep -= 1) : null,
              steps: [
                Step(
                  title: Text("Get Ready"), isActive: true,
                  subtitle: Text("Etapa inicial"),
                  content: Text("Let's begin...")
                ),
                Step(
                    title: Text("Get Set"), isActive: true,
                    subtitle: Text("Etapa 2"),
                    content: Text("Ok, just a little more...")
                ),
                Step(
                    title: Text("Etapa 3"), isActive: true,
                    subtitle: Text("Etapa 3"),
                    content: Text("And, we're almost done!")
                ),
                Step(
                    title: Text("Go!"), isActive: true,
                    subtitle: Text("Etapa 4"),
                    content: Text("And, we're done!")
                )
              ]
            )));}}
