import 'package:flutter/material.dart';

class AppMethods {
static Future<void> uploadDocumentBottomSheet({required BuildContext context}) async {
  await showModalBottomSheet(
    context: context,
    isScrollControlled: true, // Allows custom height based on content
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min, // Minimum space based on content
          children: [
            const Text(
              'Select upload option',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            ListTile(
              leading: const Icon(Icons.camera_alt_outlined),
              title: const Text('Scan a photo'),
              onTap: () {
                // Handle camera option
              
              },
            ),
            ListTile(
              leading: const Icon(Icons.image),
              title: const Text('Choose from gallery'),
              onTap: () {
                // Handle gallery option
                
              },
            ),
            const SizedBox(height: 16), // Separation between options and button
            ElevatedButton(
              onPressed: () {
                // Handle the button press logic
                Navigator.pop(context); // Close the bottom sheet
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white, // Button color
                minimumSize: const Size(double.infinity, 50), // Full-width button
              ),
              child: const Text('cancel', style: TextStyle(color: Colors.red)),
            ),
          ],
        ),
      );
    },
  );
}
}
