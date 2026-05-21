import 'package:e301_login/ui/labels/custom_labels.dart';
import 'package:flutter/material.dart';

class SucursalesView extends StatelessWidget {
  const SucursalesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Sucursales', style: CustomLabels.h1),
      ),
    );
  }
}