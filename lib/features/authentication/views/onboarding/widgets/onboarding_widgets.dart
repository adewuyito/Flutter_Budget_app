import 'package:flutter/material.dart';
import 'package:b_expence/utils/constants/text_strings.dart';
import 'package:b_expence/utils/constants/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:b_expence/utils/device/device_utilities.dart';
import 'package:b_expence/utils/constants/sizes.dart';
import 'package:b_expence/utils/helpers/custom_functions.dart';
import 'package:b_expence/utils/helpers/helper_function.dart';
import 'package:b_expence/features/authentication/controllers/onboarding/onboarding_controllers.dart';

class Onboarding extends StatelessWidget {
  final int index;
  const Onboarding({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(BSizes.defaultSpacing),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage(BCustomFunctions.onboardingHeaderImage(index)),
            // width: BHelperFunctions.screenWidth() * 0.6,
            // height: BHelperFunctions.screenHeight() * 0.4,
          ),
          const SizedBox(height: BSizes.onBoardingImgPadding),
          Text(
            BCustomFunctions.onboardingHeaderString(index),
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.left,
          ),
          const SizedBox(height: BSizes.smd),
          FractionallySizedBox(
            widthFactor: 0.7,
            child: Text(
              BCustomFunctions.onboardingSubHeaderString(index),
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontFamily: 'Satoshi', fontWeight: FontWeight.w500),
              textAlign: TextAlign.left,
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}




// class Onboarding extends StatelessWidget {
//   final int index;
//   const Onboarding({
//     super.key,
//     required this.index,
//   });
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(BSizes.defaultSpacing),
//       child: Column(
//         children: [
//           Image(
//             image: AssetImage(BCustomFunctions.onboardingHeaderImage(index)),
//             width: BHelperFunctions.screenWidth() * 0.6,
//             height: BHelperFunctions.screenHeight() * 0.4,
//           ),
//           const SizedBox(height: BSizes.onBoardingImgPadding),
//           Text(
//             BCustomFunctions.onboardingHeaderString(index),
//             style: Theme.of(context).textTheme.headlineSmall,
//             textAlign: TextAlign.left,
//           ),
//           const SizedBox(height: BSizes.spaceBtwItems),
//           Text(
//             BCustomFunctions.onboardingSubHeaderString(index),
//             style: Theme.of(context).textTheme.bodyMedium,
//             textAlign: TextAlign.left,
//             softWrap: true,
//           ),
//         ],
//       ),
//     );
//   }
// }
