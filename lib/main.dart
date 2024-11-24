import 'package:flutter/material.dart';
import 'package:my_taxi/provider/image_picker_provider.dart';
import 'package:my_taxi/screens/my_documents_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyTaxi());
}

class MyTaxi extends StatelessWidget {
  const MyTaxi({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ImageProviderModel(),
        ),
      ],
      child: MaterialApp(
        title: 'my taxi',
        home: MyDocumentScreen(),
      ),
    );
  }
}
