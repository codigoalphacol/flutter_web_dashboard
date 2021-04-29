import 'package:flutter/material.dart';

final TextStyle kPageTitleStyle = TextStyle(fontSize: 10.0);

class AppScale {
      BuildContext _ctxt;
    
      AppScale(this._ctxt);
    
      double get labelDim => scaledWidth(.02);
      double get popupMenuButton => scaledHeight(.095); 

      double scaledWidth(double widthScale) {
        return MediaQuery.of(_ctxt).size.width * widthScale;
      }
    
      double scaledHeight(double heightScale) {
        return MediaQuery.of(_ctxt).size.height * heightScale;
      }
    }