import 'package:flutter/material.dart';
import 'package:my_taxi/service/app_methods.dart';

class DocumentItem extends StatelessWidget {
  final String title;

  const DocumentItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: const Text("download the document"),
        trailing: IconButton(
          onPressed: () async {
            // Handle upload/download button press

            await AppMethods.uploadDocumentBottomSheet(context: context);
          },
          icon: const Icon(Icons.upload),
        ),
      ),
    );
  }
}
