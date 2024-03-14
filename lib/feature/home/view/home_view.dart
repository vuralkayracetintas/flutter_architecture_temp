import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_architecture/feature/home/view/mixin/home_view_mixin.dart';
import 'package:flutter_architecture/product/init/language/locale_keys.g.dart';
import 'package:flutter_architecture/product/init/product_localization.dart';
import 'package:flutter_architecture/product/navigation/app_router.dart';
import 'package:flutter_architecture/product/utility/constants/enums/locales.dart';
import 'package:flutter_architecture/product/widget/button/bold_text_button.dart';
import 'package:flutter_architecture/product/widget/button/dialog_normal_button.dart';
import 'package:flutter_architecture/product/widget/project_network_image.dart';
import 'package:widgets/widgets.dart';

part 'widget/home_appbar.dart';

@RoutePage()

/// [Home View] stateful widget
class HomeView extends StatefulWidget {
  ///
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _HomeAppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 'Karamursel'.ext.launchMaps();
          SuccessDialog.show(context, 'Show Dialog Title');
        },
      ),
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
          const DialogNormalButton(
            onComplete: print,
          ),
          BoldTextButton(
            onPressed: () {},
            child: const Text('data'),
          ),
          const AdaptAllView(
            phone: Text('phone'),
            tablet: Text('tablet'),
            desktop: Text('desktop'),
          ),
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

          const CustomNetworkImage(
            imageUrl: 'https://picsum.photos/200/300',
            memCache: CustomMemCache(height: 300, width: 300),
          ),
          const ProjectNetworkImage(url: 'https://picsum.photos/200/300'),
        ],
      ),
    );
  }
}
