import 'package:b_expence/utils/constants/image_string.dart';
import 'package:b_expence/utils/constants/text_strings.dart';

class BCustomFunctions {
    static String onboardingHeaderImage(int index) {
    switch (index) {
      case 1:
        return BImage.onboarding1;
      case 2:
        return BImage.onboarding2;
      default:
        return BImage.onboarding1;
    }
  }

  static String onboardingHeaderString(int index) {
    switch (index) {
      case 1:
        return BTexts.onBoardingHeader1;
      case 2:
        return BTexts.onBoardingHeader2;
      default:
        return BTexts.onBoardingHeader1;
    }
  }

  static String onboardingSubHeaderString(int index) {
    switch (index) {
      case 1:
        return BTexts.onBoardingSubHeader1;
      case 2:
        return BTexts.onBoardingSubHeader2;
      default:
        return BTexts.onBoardingSubHeader1;
    }
  }
}
