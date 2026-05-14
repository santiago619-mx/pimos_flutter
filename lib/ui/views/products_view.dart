import 'package:e301_login/ui/labels/custom_labels.dart';
import 'package:flutter/material.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Products View', style: CustomLabels.h1),
      ),
    );
  }
}