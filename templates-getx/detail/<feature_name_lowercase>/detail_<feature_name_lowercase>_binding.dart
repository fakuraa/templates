import 'package:get/get.dart';
import 'detail_<feature_name_lowercase>_controller.dart';

class Detail<feature_name>Binding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => Detail<feature_name>Controller(),
    );
  }
}
