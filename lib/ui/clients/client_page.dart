import 'dart:ui';
import 'package:dashboard/constants/styles.dart';
import 'package:flutter/material.dart';

class ClientPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    AppScale _scale = AppScale(context);

    return Center(
      child: Container(

      child: Text('Clients', style: TextStyle(color: Colors.orange, fontSize: _scale.labelDim * 5),),
      ),
    );
  }
}