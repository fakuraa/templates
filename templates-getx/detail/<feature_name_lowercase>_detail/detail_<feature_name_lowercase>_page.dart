import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:<project_name>/resources/resources.dart';
import 'package:<project_name>/utills/widget/scrollview_with_expanded.dart';
import 'package:<project_name>/utills/widget/state_handle_widget.dart';
import 'package:<project_name>/utills/widget/sm_app_bar.dart';

import 'detail_<feature_name_lowercase>_controller.dart';

class Detail<feature_name>Page extends StatelessWidget {
  static const String route = '/detail/<feature_name_lowercase>';

  const Detail<feature_name>Page({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Detail<feature_name>Controller>(builder: (controller) {
      return Scaffold(
        backgroundColor: AppColors.background,
        appBar: SMAppBar.primaryAppbar(
          titleString:
              controller.isObjection ? 'txt_detail_objc'.tr : 'txt_dr_title'.tr,
        ),
        body: Obx(
          () => StateHandleWidget(
            loadingEnabled: controller.isShimmering,
            emptyEnabled: controller.isEmptyData,
            errorEnabled: controller.isError,
            errorTitle: 'txt_error_general'.tr,
            onRetryPressed: controller.refreshPage,
            body: // ! Use as you need
                SmartScrollExpand(
              enablePullDown: true,
              refreshController: controller.refreshController,
              onRefresh: controller.refreshPage,
              child: const [
                Expanded(
                  child: SizedBox(),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
