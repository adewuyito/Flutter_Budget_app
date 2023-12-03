import 'package:b_expence/utils/constants/sizes.dart';
import 'package:b_expence/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:b_expence/core/keys.dart';
import 'package:b_expence/utils/constants/colors.dart';
import 'package:b_expence/common/styles/spacing_styles.dart';
import 'package:b_expence/utils/helpers/helper_function.dart';

class OffSet extends StatefulWidget {
  final Widget child;
  const OffSet({super.key, required this.child});

  @override
  State<OffSet> createState() => _OffSetState();
}

class _OffSetState extends State<OffSet> {
  final widgetKey = BKeys.globalKey;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget.child,
        Positioned(
          // bottom: 8.0,
          // right: 4.0,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: BColors.black, width: 2),
              borderRadius: BorderRadius.circular(BSizes.sm),
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,
            ),
          ),
        ),
      ],
    );
  }
}

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: BSpacing.paddingWithAppBarHeight,
        child: Center(
          child: OffSetWidget(
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(labelText: BTexts.emailTextField),
            ),
          ),
        ),
      ),
    );
  }
}

class OffSetWidget extends StatelessWidget {
  final Widget child;
  const OffSetWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 2),
        borderRadius: BorderRadius.circular(BSizes.radiusTextField),
      ),
      child: Transform.translate(
        offset: const Offset(-5.0, -5.0),
        child: child,
      ),
    );
  }
}
