import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:<project_name>/resources/resources.dart';
import 'package:<project_name>/utills/widget/scroll_physics.dart';
import 'package:<project_name>/utills/widget/state_handle_widget.dart';
import 'package:<project_name>/utills/widget/sm_app_bar.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '<feature_name_lowercase>_controller.dart';

class <feature_name>Page extends StatelessWidget {
  static const String route = '/<feature_name_lowercase>';

  const <feature_name>Page({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<<feature_name>Controller>(builder: (controller) {
      return Scaffold(
        backgroundColor: AppColors.background,
        appBar: SMAppBar.primaryAppbar(
          titleString: 'txt_title'.tr,
        ),
        body: Obx(
          () => SmartRefresher(
            enablePullDown: true,
            enablePullUp: controller.hasNext.value,
            controller: controller.refreshController,
            onRefresh: controller.refreshPage,
            onLoading: controller.loadNextPage,
            child: CustomScrollView(
              physics: const NoImplicitScrollPhysics(),
              slivers: [
                const SliverAppBar(
                  pinned: false,
                  floating: true,
                  leadingWidth: 0,
                  leading: SizedBox(),
                  surfaceTintColor: AppColors.background,
                  backgroundColor: AppColors.background,
                  expandedHeight: 0,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Column(
                      children: [],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: StateHandleWidget(
                    loadingEnabled: controller.isShimmering,
                    emptyEnabled: controller.isEmptyData,
                    errorEnabled: controller.isError,
                    errorTitle: 'txt_error_general'.tr,
                    onRetryPressed: controller.refreshPage,
                    body: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller.dataList.length,
                      itemBuilder: (context, index) {
                        final item = controller.dataList[index];
                        return const ListTile()
                            .marginSymmetric(horizontal: 16);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
