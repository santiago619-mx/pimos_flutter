import 'package:e301_login/ui/labels/custom_labels.dart';
import 'package:flutter/material.dart';

class CustomersView extends StatelessWidget {
  const CustomersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Customers View', style: CustomLabels.h1),
      ),
    );
  }
}