import 'package:get/get.dart';
import 'package:<project_name>/data/remote/base/base_controller.dart';
import 'detail_<feature_name_lowercase>_page.dart';

class Detail<feature_name>Controller extends BaseController {
  String tag = 'Detail<feature_name>Controller::->';

  Map<String, dynamic>? id;

  @override
  void onInit() {
    super.onInit();
    id = Get.arguments["id"];

    // load cache then fetch data.
    // getCache(id: id).then((value) => refreshPage());

    // only fetch data.
    refreshPage();
  }

  @override
  get statusData => dataObj;

  @override
  String get cacheKey => "${Detail<feature_name>Page.route}/$id";

  @override
  void refreshPage() {
    onLoadData();
  }

  Future<void> onLoadData() async {
    // loadingState();
    // try {
    //   final client = await createClient();
    //   final result = await client
    //       .callingRetrofitAPI(cancelToken, id)
    //       .validateResponse()
    //       .safeError();
    //
    //   await saveCacheAndFinish(data: result.data);
    // } catch (error, stackTrace) {
    //   debugPrint('$tag error: $error, $stackTrace');
    //   finishLoadData(errorMessage: error.toString());
    // }
  }
}
