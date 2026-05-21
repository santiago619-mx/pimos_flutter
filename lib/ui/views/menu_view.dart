import 'package:e301_login/ui/labels/custom_labels.dart';
import 'package:flutter/material.dart';

class MenuView extends StatelessWidget {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Menú', style: CustomLabels.h1),
      ),
    );
  }
}