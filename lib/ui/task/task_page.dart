import 'dart:ui';
import 'package:dashboard/constants/styles.dart';
import 'package:flutter/material.dart';

class TaskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    AppScale _scale = AppScale(context);

    return Center(
      child: Container(

      child: Text('Task', style: TextStyle(color: Colors.grey, fontSize: _scale.labelDim * 5),),
      ),
    );
  }
}