import 'package:clean_arch_with_getx/data/image_model.dart';

class ImageEntity {
  final int id;
  final String image;
  final double ratio;

  ImageEntity({required this.id, required this.image, required this.ratio});

  factory ImageEntity.parseFromModel(ImageModel imageModel) {
    return ImageEntity(
        id: imageModel.id, image: imageModel.image, ratio: imageModel.ratio);
  }
}
