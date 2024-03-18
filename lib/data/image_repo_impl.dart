import 'package:clean_arch_with_getx/data/image_model.dart';
import 'package:clean_arch_with_getx/data/network_helper.dart';
import 'package:clean_arch_with_getx/domain/image_entity.dart';
import 'package:clean_arch_with_getx/domain/image_repo.dart';

class ImageRepoImpl extends ImageRepo {
  @override
  Future<List<ImageEntity>> getAllImages() async {
    final data = await NetworkHelper().getData() as List<dynamic>;
    final modelData = data.map((e) => ImageModel.parseJsonData(e)).toList();
    final listOfImages =
        modelData.map((e) => ImageEntity.parseFromModel(e)).toList();
    return listOfImages;
  }

  @override
  Future<ImageEntity> getSingleImage() {
    throw UnimplementedError();
  }

  @override
  Future<ImageEntity> getCollections() {
    throw UnimplementedError();
  }
}
