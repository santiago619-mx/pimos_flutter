import 'package:e301_login/ui/labels/custom_labels.dart';
import 'package:flutter/material.dart';

class MarketingView extends StatelessWidget {
  const MarketingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Marketing View', style: CustomLabels.h1),
      ),
    );
  }
}