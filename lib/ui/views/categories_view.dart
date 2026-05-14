import 'package:e301_login/ui/labels/custom_labels.dart';
import 'package:flutter/material.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Categories View', style: CustomLabels.h1),
      ),
    );
  }
}