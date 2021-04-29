import 'dart:ui';

import 'package:dashboard/constants/styles.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    AppScale _scale = AppScale(context);

    return Center(
      child: Container(

      child: Text('Dashboard', style: TextStyle(color: Colors.purple, fontSize: _scale.labelDim * 5),),
      ),
    );
  }
}