import 'package:e301_login/ui/labels/custom_labels.dart';
import 'package:flutter/material.dart';

class ContactoView extends StatelessWidget {
  const ContactoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Contacto', style: CustomLabels.h1),
      ),
    );
  }
}