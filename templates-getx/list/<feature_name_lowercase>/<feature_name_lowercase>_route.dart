import 'package:get/get.dart';
import '<feature_name_lowercase>_binding.dart';
import '<feature_name_lowercase>_page.dart';

final <feature_name_lowercase>Route = [
  GetPage(
    name: <feature_name>Page.route,
    page: () => const <feature_name>Page(),
    binding: <feature_name>Binding(),
  ),
];
