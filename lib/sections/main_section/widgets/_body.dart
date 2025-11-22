part of '../main_section.dart';

class _Body extends StatelessWidget {
  const _Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();

    return ListView.builder(
      controller: controller.controller,
      itemCount: BodyUtils.views.length,
      itemBuilder: (context, index) => BodyUtils.views[index],
    );
  }
}
