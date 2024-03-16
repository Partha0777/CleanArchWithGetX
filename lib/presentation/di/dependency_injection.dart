
import 'package:clean_arch_with_getx/data/image_repo_impl.dart';
import 'package:clean_arch_with_getx/data/network_helper.dart';
import 'package:clean_arch_with_getx/domain/image_repo.dart';
import 'package:clean_arch_with_getx/presentation/image_controller.dart';
import 'package:get/instance_manager.dart';

class DependencyInjections{

  static void init(){
    Get.lazyPut<ImageController>(() => ImageController());
    Get.lazyPut<ImageRepo>(() => ImageRepoImpl());
    Get.lazyPut<NetworkHelper>(() => NetworkHelper());
  }

}