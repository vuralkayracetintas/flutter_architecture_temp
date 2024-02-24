import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_architecture/feature/home/view/mixin/home_view_mixin.dart';
import 'package:flutter_architecture/product/init/language/locale_keys.g.dart';
import 'package:flutter_architecture/product/init/product_localization.dart';
import 'package:flutter_architecture/product/navigation/app_router.dart';
import 'package:flutter_architecture/product/utility/constants/enums/locales.dart';

part 'widget/home_appbar.dart';

@RoutePage()
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _HomeAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Assets.icons.icLove.svg(
          //   package: 'gen',
          // ),
          // SizedBox(

          //   height: 200,
          //   width: 100,
          //   child: Assets.lottie.animZombie.lottie(package: 'gen'),
          // ),
          // const Text('Change Language'),

          ElevatedButton(
            onPressed: () async {
              final response =
                  await context.router.push(HomeDetailsRoute(details: '1'));
            },
            child: const Text(
              'Navigation button',
            ),
          ),
          // Assets.images.imgFlags.image(),
          ElevatedButton(
            onPressed: () {
              ProductLocalization.updateLanguage(
                context: context,
                value: Locales.tr,
              );
            },
            child: const Text(LocaleKeys.general_button_save).tr(
              args: ['Arg value'],
            ),
          ),
        ],
      ),
    );
  }
}
