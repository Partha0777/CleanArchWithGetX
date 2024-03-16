import 'package:clean_arch_with_getx/domain/image_usecase.dart';
import 'package:get/get.dart';

import '../domain/image_entity.dart';

class ImageController extends GetxController {
  late final List<ImageEntity> _imageList = RxList();

  List<ImageEntity> get imagesList => _imageList;

  late final RxBool _showLoading = false.obs;

  bool get showLoading => _showLoading.value;

  final repo = ImageUseCase(imageRepo: Get.find());

  @override
  void onInit() {
    _showLoading.value = true;
    fetImages();
    super.onInit();
  }

  void fetImages() async {
    var list = await repo.getImageList();
    _imageList.addAll(list);
    _showLoading.value = false;
  }
}
