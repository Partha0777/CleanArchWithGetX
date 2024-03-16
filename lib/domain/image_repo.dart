

import 'package:clean_arch_with_getx/domain/image_entity.dart';

abstract class ImageRepo{

  Future<List<ImageEntity>> getAllImages();

  Future<ImageEntity> getSingleImage();

}