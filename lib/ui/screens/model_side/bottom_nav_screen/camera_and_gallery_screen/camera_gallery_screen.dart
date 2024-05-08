import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../component/pop_over.dart';
import '../../../../component/text.dart';


class camera_gallery_screen extends StatefulWidget {
  const camera_gallery_screen({super.key});

  @override
  State<camera_gallery_screen> createState() => _camera_gallery_screenState();
}

class _camera_gallery_screenState extends State<camera_gallery_screen> {


  //Picking image

  XFile? image; //Store file path
  final pick_instance = ImagePicker();
  XFile? picked_image;

  Future pick_image(source) async {
    picked_image =
    await pick_instance.pickImage(source: source, imageQuality: 100);

    if (picked_image != null) {
      image = XFile(picked_image!.path);
      setState(() {});
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text(
          "Image not selected ",
        ),
        backgroundColor: Colors.red,
      ));
    }
  }


  void settingModalBottomSheet(
      context, height, width, cameraOnPress, galleryOnPress) {
    showModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        builder: (BuildContext context) {
          return Popover(
            child: Container(
              height: height / 5,
              margin: EdgeInsets.symmetric(horizontal: width / 30),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: height / 40,
                  ),
                  ListTile(
                      leading: const Icon(
                        Icons.camera_alt_outlined,
                        color: Color(0xff767676),
                      ),
                      title: text(data: 'Camera',f_size: 14,f_weight: FontWeight.w400,color: Colors.black,),
                      onTap: cameraOnPress),
                  ListTile(
                    leading: const Icon(
                      Icons.perm_media_outlined,
                      color: Color(0xff767676),
                    ),
                    title:  text(data: 'Gallery',f_size: 14,f_weight: FontWeight.w400,color: Colors.black,),
                    onTap: galleryOnPress,
                  ),
                ],
              ),
            ),
          );
        });
  }


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: InkWell(
          onTap: (){
            settingModalBottomSheet(context, height, width, () {
              pick_image(ImageSource.camera)
                  .then((value) => Navigator.pop(context));
            }, () {
              pick_image(ImageSource.gallery)
                  .then((value) => Navigator.pop(context));
            });
          },
          child: Container(
            height: height*0.08,
            width: width*0.8,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white.withOpacity(0.4)
              ),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Center(child: text(data: "SELECT IMAGE", f_size: 26, color: Colors.white, f_weight: FontWeight.w700)),
          ),
        ),
      ),
    );
  }
}
