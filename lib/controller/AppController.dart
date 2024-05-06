import 'dart:io';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AppController extends GetxController {
  var isChecked = false.obs;
  var isFav = false.obs;
  var index = 0.obs;
  var isMonthly="false".obs;

  var gender = "Select".obs;



  File? chosenImage;

  Future<void> pickImageFrom(ImageSource imageSource) async {
    try {
      // Pick an image from the specified source
      final XFile? xFile = await ImagePicker().pickImage(source: imageSource);
      if (xFile == null) return;

      // Get the chosen image file
      chosenImage = File(xFile.path);

      // Now you have the chosen image in the 'chosenImage' variable, you can use it as needed.
      // For example, you can display it in an Image widget:
      // Image.file(chosenImage)

      // After this, you can upload the image to storage or perform any other operations.
    } catch (error) {
      print('Error picking image: $error');
    }
  }

  List<Map<String, dynamic>> modelsData = [
    {
      'image': 'assets/images/modelImage_1.png',
      'name': 'mohamed ahmed',
      'location': 'UAE,Dubai',
    },
    {
      'image': 'assets/images/modelImage_2.png',
      'name': 'Ali amir',
      'location': 'egypt,cairo',
    },
    {
      'image': 'assets/images/modelImage_3.png',
      'name': 'Mohamed Ahmed',
      'location': 'UAE,Dubai',
    },
    {
      'image': 'assets/images/modelImage_4.png',
      'name': 'Ali Amir',
      'location': 'egypt,cairo',
    },
    {
      'image': 'assets/images/modelImage_1.png',
      'name': 'mohamed ahmed',
      'location': 'UAE,Dubai',
    },
    {
      'image': 'assets/images/modelImage_2.png',
      'name': 'mohamed ahmed',
      'location': 'UAE,Dubai',
    },
  ];

  List<Map<String, dynamic>> castingData = [
    {
      "image": "assets/images/casting_image_one.png",
      "title": "I Want A Professional\n Model For My Business",
      "location": "Cairo, Egypt",
      "date": "30 july 2024",
      "status": "Paid Shot Or Event",
    },
    {
      "image": "assets/images/casting_image_two.png",
      "title": "I Want A Professional\n Model For My Business",
      "location": "Cairo, Egypt",
      "date": "30 july 2024",
      "status": "Paid Shot Or Event",
    },
    {
      "image": "assets/images/casting_image_three.png",
      "title": "I Want A Professional\n Model For My Business",
      "location": "Cairo, Egypt",
      "date": "30 july 2024",
      "status": "Paid Shot Or Event",
    },
    {
      "image": "assets/images/casting_image_one.png",
      "title": "I Want A Professional\n Model For My Business",
      "location": "Cairo, Egypt",
      "date": "30 july 2024",
      "status": "Paid Shot Or Event",
    },
    {
      "image": "assets/images/casting_image_two.png",
      "title": "I Want A Professional\n Model For My Business",
      "location": "Cairo, Egypt",
      "date": "30 july 2024",
      "status": "Paid Shot Or Event",
    },
  ];
}
