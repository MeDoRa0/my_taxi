import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageProviderModel with ChangeNotifier {
  XFile? _pickedImage;
  int _uploadedCount = 0;

  XFile? get pickedImage => _pickedImage;
  int get uploadedCount => _uploadedCount;

  void setPickedImage(XFile? image) {
    if (image != null) {
      _pickedImage = image;
      _uploadedCount++;
      notifyListeners();
    }
  }

  void clearImage() {
    _pickedImage = null;
    notifyListeners();
  }
}
