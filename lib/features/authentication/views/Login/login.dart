import "package:b_expence/common/styles/spacing_styles.dart";
import "package:b_expence/common/widgets/divider_widget.dart";
import "package:b_expence/features/authentication/views/Login/widgets/login_widget.dart";
import "package:b_expence/utils/constants/sizes.dart";
import "package:b_expence/utils/constants/text_strings.dart";
import "package:b_expence/utils/helpers/helper_function.dart";
import "package:flutter/material.dart";

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = BHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: BSpacing.paddingWithAppBarHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.headlineMedium,
                  children: const [
                    TextSpan(text: BTexts.loginHeaderText),
                    TextSpan(text: " "),
                    TextSpan(
                      text: BTexts.spanHeaderText,
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
              const LoginForm(),
              CustomDivider(isDark: isDark, message: BTexts.loginPromptText),
            ],
          ),
        ),
      ),
    );
  }
}
