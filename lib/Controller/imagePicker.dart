import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:image_picker/image_picker.dart';

class ImageController extends GetxController {
  String? imagePath;

  Future pickimage(ImageSource imageSource) async {
    XFile? file =
        await ImagePicker().pickImage(source: imageSource, imageQuality: 100);
    if (file == null) return;
    imagePath = file.path;
    update();
  }

  void removeImage(){
    imagePath = null;
    update();
  }
  // Future pickimageCamera(ImageSource camera) async {
  //   XFile? file = await ImagePicker()
  //       .pickImage(source: ImageSource.camera, imageQuality: 100);
  //   if (file == null) return;
  //   imagePath = file.path;
  //   update();
  // }

}
