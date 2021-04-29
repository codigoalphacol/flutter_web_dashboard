import 'dart:ui';

import 'package:dashboard/constants/styles.dart';
import 'package:flutter/material.dart';

class InvoicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    AppScale _scale = AppScale(context);

    return Center(
      child: Container(

      child: Text('Invoice', style: TextStyle(color: Colors.pink, fontSize: _scale.labelDim * 5),),
      ),
    );
  }
}