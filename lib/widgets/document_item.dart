import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_taxi/provider/image_picker_provider.dart';
import 'package:my_taxi/service/app_methods.dart';
import 'package:provider/provider.dart';

class DocumentItem extends StatefulWidget {
  final String title;

  const DocumentItem({super.key, required this.title});

  @override
  State<DocumentItem> createState() => _DocumentItemState();
}

class _DocumentItemState extends State<DocumentItem> {
  bool isUploaded = false;
  Future<void> localImagePicker(BuildContext context) async {
    final ImagePicker picker = ImagePicker();
    final imageProvider =
        Provider.of<ImageProviderModel>(context, listen: false);
    await AppMethods.uploadDocumentBottomSheet(
      context: context,
      cameraFT: () async {
        final XFile? image = await picker.pickImage(source: ImageSource.camera);
        if (image != null) {
          imageProvider.setPickedImage(image);
          setState(() {
            isUploaded = true;
          });
        }
      },
      galleryFT: () async {
        final XFile? image =
            await picker.pickImage(source: ImageSource.gallery);
        if (image != null) {
          imageProvider.setPickedImage(image);
          setState(() {
            isUploaded = true;
          });
        }
      },
    );
  }

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
          widget.title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: const Text("upload the document"),
        trailing: IconButton(
          onPressed: () async {
            // Handle upload/download button press

            await localImagePicker(context);
          },
          icon: isUploaded
              ? const Icon(
                  Icons.check_circle_rounded,
                  color: Color(0xFF3422F2),
                  size: 35,
                )
              : Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xffE5E7E7)),
                  child: const Icon(Icons.file_upload_outlined)),
        ),
      ),
    );
  }
}
