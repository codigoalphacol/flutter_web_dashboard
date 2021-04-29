import 'dart:ui';

import 'package:dashboard/constants/styles.dart';
import 'package:flutter/material.dart';

class ReportsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    AppScale _scale = AppScale(context);

    return Center(
      child: Container(

      child: Text('Reports', style: TextStyle(color: Colors.red, fontSize: _scale.labelDim * 5),),
      ),
    );
  }
}