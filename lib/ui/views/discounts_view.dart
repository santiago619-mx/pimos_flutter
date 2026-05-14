import 'package:e301_login/ui/labels/custom_labels.dart';
import 'package:flutter/material.dart';

class DiscountsView extends StatelessWidget {
  const DiscountsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Discounts View', style: CustomLabels.h1),
      ),
    );
  }
}