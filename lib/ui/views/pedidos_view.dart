import 'package:e301_login/ui/labels/custom_labels.dart';
import 'package:flutter/material.dart';

class PedidosView extends StatelessWidget {
  const PedidosView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Pedidos', style: CustomLabels.h1),
      ),
    );
  }
}