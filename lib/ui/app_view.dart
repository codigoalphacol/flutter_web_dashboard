import 'package:dashboard/routes/routes.dart';
import 'package:dashboard/widgets/navigation_device.dart';
import 'package:flutter/material.dart';

class AppView extends StatefulWidget {
  final Widget child;

  const AppView({@required this.child});

  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  bool _isVisible = true;
  bool switchValue = false;

  void showMenuOptions() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: ()=> showMenuOptions(),
          );
        }),
        title: Text('Dashboard'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.store),
             onPressed: () => navKey.currentState.pushNamed('/dashboardPage'),
          )
        ],
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Visibility(
            visible: _isVisible,
            child: NavigationDevice(),
          ),
          Expanded(child: widget.child),
        ],
      ),
    );
  }
}
