import 'dart:ui';

import 'package:dashboard/constants/styles.dart';
import 'package:flutter/material.dart';

class PaysPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    AppScale _scale = AppScale(context);

    return Center(
      child: Container(

      child: Text('Pays', style: TextStyle(color: Colors.brown, fontSize: _scale.labelDim * 5),),
      ),
    );
  }
}