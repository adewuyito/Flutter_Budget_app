import 'dart:developer';

import 'package:b_expence/utils/constants/colors.dart';
import 'package:b_expence/utils/constants/sizes.dart';
import 'package:b_expence/utils/constants/text_strings.dart';
import 'package:b_expence/utils/device/device_utilities.dart';
import 'package:b_expence/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:b_expence/features/authentication/views/onboarding/widgets/onboarding_widgets.dart';
import 'package:b_expence/features/authentication/controllers/onboarding/onboarding_controllers.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: BDeviceUtils.getScreenHeight() * 0.1),
            child: PageView(
              controller: controller.pageController,
              onPageChanged: (index) {
                controller.upadatPageIndicator(index);
                log(index.toString());
              },
              children: const <Widget>[
                Onboarding(index: 1),
                Onboarding(index: 2),
              ],
            ),
          ),
          const AbsolutWidgetColumn(),
        ],
      ),
    );
  }
}

class AbsolutWidgetColumn extends StatefulWidget {
  const AbsolutWidgetColumn({
    super.key,
  });

  @override
  State<AbsolutWidgetColumn> createState() => _AbsolutWidgetColumnState();
}

class _AbsolutWidgetColumnState extends State<AbsolutWidgetColumn> {
  @override
  Widget build(BuildContext context) {
    final isDark = BHelperFunctions.isDarkMode(context);
    final controller = OnBoardingController.instance;

    return Positioned(
      bottom: BDeviceUtils.getBottomNavigationBarHeight(),
      left: BSizes.defaultSpacing,
      right: BSizes.defaultSpacing,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: BSizes.md),
          SmoothPageIndicator(
            effect: ExpandingDotsEffect(
              activeDotColor: isDark ? BColors.white : BColors.black,
              dotHeight: 4,
              dotWidth: 11,
              expansionFactor: 2,
            ),
            controller: controller.pageController,
            onDotClicked: controller.dotNavigation,
            count: 2,
          ),
          const SizedBox(height: BSizes.xl),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
                onPressed: OnBoardingController.instance.skipPage,
                child: Text(
                  BTexts.skipButton,
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(fontWeight: FontWeight.w700, fontFamily: 'Satoshi'),
                ),
              ),
              ElevatedButton(
                onPressed: OnBoardingController.instance.nextPage,
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: BColors.elevatedButtonYellow,
                  side: const BorderSide(width: 1, color: BColors.black),
                  padding: const EdgeInsets.all(21),
                ),
                child: null,
              )
            ],
          )
        ],
      ),
    );
  }
}
