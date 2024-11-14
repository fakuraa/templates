import 'package:get/get.dart';
import 'detail_<feature_name_lowercase>_binding.dart';
import 'detail_<feature_name_lowercase>_page.dart';

final detail<feature_name>Route = [
  GetPage(
    name: Detail<feature_name>Page.route,
    page: () => const Detail<feature_name>Page(),
    binding: Detail<feature_name>Binding(),
  ),
];
