import 'package:get/get.dart';
import '<feature_name_lowercase>_controller.dart';

class <feature_name>Binding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => <feature_name>Controller(),
    );
  }
}
