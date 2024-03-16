import 'package:clean_arch_with_getx/domain/image_entity.dart';
import 'package:clean_arch_with_getx/domain/image_repo.dart';

class ImageUseCase {
  final ImageRepo imageRepo;

  const ImageUseCase({required this.imageRepo});

  Future<List<ImageEntity>> getImageList() async {
    return await imageRepo.getAllImages();
  }
}
