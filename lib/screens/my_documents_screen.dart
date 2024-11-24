import 'package:flutter/material.dart';
import 'package:my_taxi/widgets/document_item.dart';

class MyDocumentScreen extends StatelessWidget {
  final List<String> documentTitles = [
    "profile photo",
    "photo of Driving license - front",
    "photo of Driving license - back",
    "photo of national ID - front",
    "photo of national ID - back",
    "Driving license",
  ];

  MyDocumentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F8FF),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("My Document"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Center(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: const Color(0xFF3422F2),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: const Text(
                  "0/9",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: documentTitles.length +
                    1, // +1 for the text field at the end
                itemBuilder: (context, index) {
                  if (index < documentTitles.length) {
                    return DocumentItem(title: documentTitles[index]);
                  } else {
                    // Last item: TextField for "Model Of Car"
                    return Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: const ListTile(
                        title: Text(
                          'Model Of Car',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(6),
                            filled: true,
                            fillColor: Color(0xffE5E7E7),
                            hintText: "enter the model of the car",
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                    );
                  }
                },
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle next button press
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff1D1AD8),
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                "Next",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
