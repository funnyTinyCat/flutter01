import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class Utils {
  //
  static Future<String> pickImage(ImageSource source) async {
    try {
      //
      final picker = ImagePicker();
      final image = await picker.pickImage(source: source);

      return image?.path ?? '';
    } catch (e) {
      return "";
    }
  }

  static Future<CroppedFile?> cropImage(String path) async {
    //
    final result = await ImageCropper().cropImage(
      sourcePath: path,
      aspectRatio: CropAspectRatio(ratioX: 1, ratioY: 1),
      //   uiSettings:
    );
/*
    final result = await ImageCropper().cropImage(
      sourcePath: path,
      aspectRatioPresets: [CropAspectRatioPreset.square,],    );
*/

    return result;
  }
}
