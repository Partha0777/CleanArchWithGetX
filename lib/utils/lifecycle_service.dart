
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

import '../presentation/image_controller.dart';

class LifeCycleService extends GetxService with WidgetsBindingObserver{

  @override
  void onInit() {
    WidgetsBinding.instance.addObserver(this);
    super.onInit();
  }

  @override
  void onClose() {
    WidgetsBinding.instance.removeObserver(this);
    super.onClose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    Get.find<ImageController>().onResumed();
    super.didChangeAppLifecycleState(state);
  }
}