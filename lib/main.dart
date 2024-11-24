import 'package:flutter/material.dart';
import 'package:my_taxi/screens/my_documents_screen.dart';

void main() {
  runApp(const MyTaxi());
}

class MyTaxi extends StatelessWidget {
  const MyTaxi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my taxi',
      home: MyDocumentScreen(),
    );
  }
}
