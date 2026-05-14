import 'package:e301_login/ui/labels/custom_labels.dart';
import 'package:flutter/material.dart';

class CampaignView extends StatelessWidget {
  const CampaignView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Campaign View', style: CustomLabels.h1),
      ),
    );
  }
}