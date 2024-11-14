import 'package:<project_name>/data/remote/base/base_controller.dart';
import '<feature_name_lowercase>_page.dart';

class <feature_name>Controller extends BaseController {
  String tag = '<feature_name>Controller::->';

  @override
  void onInit() {
    super.onInit();
    // load cache then fetch data.
    getCache().then((value) => refreshPage());

    // only fetch data.
    // refreshPage();
  }

  @override
  get statusData => dataList;

  @override
  String get cacheKey => <feature_name>Page.route;

  @override
  void loadNextPage() {
    page.value = page.value + 1;
    update();
    onLoadData();
  }

  @override
  void refreshPage() {
    onLoadData();
  }

  Future<void> onLoadData() async {
    // loadingState();
    // try {
    //   final client = await createClient();
    //   final result = await client
    //       .get<feature_name>( // ! Replace with the desire API Route
    //           cancelToken,
    //           LocaleHelper().getCurrentLocale().toLanguageTag(),
    //           page.value,
    //           perPage.value,)
    //       .validateResponse()
    //       .safeError();
    //   hasNext.value =
    //       (result.meta?.currentPage ?? 1) < (result.meta?.lastPage ?? 1);
    //   if (page.value == 1) {
    //     await saveCacheAndFinish(page: page.value, list: result.data);
    //   } else {
    //     finishLoadData(page: page.value, list: result.data);
    //   }
    // } catch (error, stackTrace) {
    //   debugPrint('$tag error: $error, $stackTrace');
    //   finishLoadData(errorMessage: error.toString());
    // }
  }

}
