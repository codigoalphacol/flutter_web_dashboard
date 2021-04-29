import 'package:dashboard/routes/routes.dart';
import 'package:dashboard/widgets/interative_nav_item.dart';
import 'package:flutter/material.dart';


class NavigationItem extends StatelessWidget {
  final String title;
  final String routeName;
  final bool selected;
  final Function onHighlight;

  const NavigationItem(
      {@required this.title,
      @required this.routeName,
      @required this.selected,
      @required this.onHighlight});

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width > size.height ? size.height : size.width;

    if (width < 590) {
      return gestureMenuPhone();
    } else if (width > 591 && width < 700) {
       return gestureMenuTablet();
    } else if (width > 700) {
      return gestureMenuDesktop();     
    } else {
      return gestureMenuDesktop();
    }

  }

  GestureDetector gestureMenuPhone() {
    return GestureDetector(
      onTap: () {
        navKey.currentState.pushNamed(routeName);
        onHighlight(routeName);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: InteractiveNavItem(
          text: title,
          routeName: routeName,
          selected: selected,
        ),
      ),
    );
  }

  GestureDetector gestureMenuTablet() {
    
    return GestureDetector(
      onTap: () {
        navKey.currentState.pushNamed(routeName);
        onHighlight(routeName);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: InteractiveNavItem(
          text: title,
          routeName: routeName,
          selected: selected,
        ),
      ),
    );
  }

  GestureDetector gestureMenuDesktop() {
    return GestureDetector(
      onTap: () {
        navKey.currentState.pushNamed(routeName);
        onHighlight(routeName);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: InteractiveNavItem(
          text: title,
          routeName: routeName,
          selected: selected,
        ),
      ),
    );
  }
}
