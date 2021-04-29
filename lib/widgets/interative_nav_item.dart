import 'package:dashboard/constants/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;


class InteractiveNavItem extends MouseRegion {
  static final appContainer =
      html.window.document.querySelectorAll('flt-glass-pane')[0];

  InteractiveNavItem(
      {Widget child, String text, String routeName, bool selected})
      : super(
          onHover: (PointerHoverEvent evt) {
            appContainer.style.cursor = 'pointer';
          },
          onExit: (PointerExitEvent evt) {
            appContainer.style.cursor = 'default';
          },
          child: InteractiveText(
            text: text,
            routeName: routeName,
            selected: selected,
          ),
        );
}

class InteractiveText extends StatefulWidget {
  final String text;
  final String routeName;
  final bool selected;

  const InteractiveText({
    @required this.text,
    this.routeName,
    this.selected,
  });

  @override
  InteractiveTextState createState() => InteractiveTextState();
}

class InteractiveTextState extends State<InteractiveText> {
  bool _hovering = false;  

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    double width = size.width > size.height ? size.height : size.width;

    if (width < 590) {
       return estiloFuentePhone();
    } else if (width > 591 && width < 700) {
        return estiloFuentePhone();
    } else if (width > 700) {
      return estiloFuente();     
    } else {
      return estiloFuente();
    }
    
  }

  MouseRegion estiloFuente() {
    return MouseRegion(
    onHover: (_) => _hovered(true),
    onExit: (_) => _hovered(false),
    child: Text(widget.text,
        style: _hovering
            ? kPageTitleStyle.copyWith(
                color: Colors.blue, fontSize: 18, decoration: TextDecoration.underline)
            : (widget.selected)
                ? kPageTitleStyle.copyWith(color: Colors.purple, fontSize: 18)
                : kPageTitleStyle.copyWith(
                color: Colors.black, fontSize: 18)),
  );
  }

   MouseRegion estiloFuentePhone() {
    return MouseRegion(
    onHover: (_) => _hovered(true),
    onExit: (_) => _hovered(false),
    child: Text(widget.text,
        style: _hovering
            ? kPageTitleStyle.copyWith(
                color: Colors.indigo, fontSize: 14, decoration: TextDecoration.underline)
            : (widget.selected)
                ? kPageTitleStyle.copyWith(color: Colors.green, fontSize: 14)
                : kPageTitleStyle.copyWith(
                color: Colors.black, fontSize: 14)),
  );
  }
  

  _hovered(bool hovered) {
    setState(() {
      _hovering = hovered;
    });
  }
}

