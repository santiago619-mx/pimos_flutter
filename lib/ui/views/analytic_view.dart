import 'package:e301_login/ui/labels/custom_labels.dart';
import 'package:flutter/material.dart';

class AnalyticView extends StatelessWidget {
  const AnalyticView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Analytic View', style: CustomLabels.h1),
      ),
    );
  }
}