import 'package:clean_arch_with_getx/data/image_repo_impl.dart';
import 'package:get/get.dart';

import '../domain/image_entity.dart';

class ImageController extends GetxController {
  late final List<ImageEntity> _imageList = RxList();

  List<ImageEntity> get imagesList => _imageList;

  final repo = ImageRepoImpl();

  @override
  void onInit() {
    fetImages();
    super.onInit();
  }

  void fetImages() async {
    var list = await repo.getAllImages();
    _imageList.addAll(list);
  }
}
