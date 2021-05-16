import 'package:dashboard/routes/routes.dart';
import 'package:dashboard/widgets/navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigationDevice extends StatefulWidget {
  @override
  _NavigationDeviceState createState() => _NavigationDeviceState();
}

class _NavigationDeviceState extends State<NavigationDevice> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
   
    double width = MediaQuery.of(context).size.width;

    setState(() {
     print(width);    
    });


    if (width > 1050) {
      return menuScreenDesktop(context);      
    } else if (width > 600 && width < 1050) {
      return menuScreenTablet(context);
    } else if (width < 600) {
      return menuScreenPhone(context);
    } else {
      return menuScreenDesktop(context);
    }
     
    
  }


  Container menuScreenPhone(BuildContext context) {
     AppScale _scale = AppScale(context);
    return Container(
        width: MediaQuery.of(context).size.width * 0.08,
        //height: MediaQuery.of(context).size.height * 0.45,
        //color: Colors.pink,
        color: Color(0x1C2833).withOpacity(0.8),
        //color: Color(0x1C2833).withOpacity(0.5),
        child: Column(
    children: [
      SizedBox(
        height: 5,
      ),
      IconButton(
        icon: new FaIcon(
          FontAwesomeIcons.tachometerAlt,
          size: 20,
          color: Colors.blue[100],
        ),
        onPressed: () => navKey.currentState.pushNamed('/dashboard'),
      ),
      Divider(color: Colors.black),
      IconButton(
        icon: new FaIcon(
          FontAwesomeIcons.idBadge,
          size: 20,
          color: Colors.blue[100],
        ),
        onPressed: () => navKey.currentState.pushNamed('/client'),
      ),
     
      Divider(color: Colors.black),
      IconButton(
        icon: new FaIcon(
          FontAwesomeIcons.tasks,
          size: 20,
          color: Colors.blue[100],
        ),
        onPressed: () => navKey.currentState.pushNamed('/invoice'),
      ),
      Divider(color: Colors.black),
      IconButton(
        icon: new FaIcon(
          FontAwesomeIcons.chartPie,
          size: 20,
          color: Colors.blue,
        ),
        onPressed: () => navKey.currentState.pushNamed('/reports'),
      ),
      Divider(color: Colors.blue),
    ],
        ),
      );
  }


  Container menuScreenTablet(BuildContext context) {
     AppScale _scale = AppScale(context);
    return Container(
        //width: 60,
        width: MediaQuery.of(context).size.width * 0.09,
        //height: MediaQuery.of(context).size.height * 5,
        color: Color(0xFF808080).withOpacity(0.5),
        child: Column(
    children: [
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.black,
                    //backgroundColor: Colors.black,
                    onSurface: Colors.yellow,
                  ),
                  onPressed: () => {
                    navKey.currentState.pushNamed('/dashboard'),
                  },
                  //color: Colors.transparent,
                  //padding: EdgeInsets.only(top: 10.0),
                  child: Column(
                    // Replace with a Row for horizontal icon + text
                    children: <Widget>[
                      FaIcon(
                        FontAwesomeIcons.tachometerAlt,
                        size: 19,
                        color: Colors.black,
                      ),
                      Text(
                        "Dashboard",
                        style: TextStyle(fontSize:  10),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      Divider(),         
      Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.black,
                  //backgroundColor: Colors.black,
                  onSurface: Colors.purple,
                ),
                onPressed: () => {
                  navKey.currentState.pushNamed('/client'),
                },
                child: Column(
                  // Replace with a Row for horizontal icon + text
                  children: <Widget>[
                    FaIcon(
                      FontAwesomeIcons.idBadge,
                      size: 15,
                      color: Colors.black,
                    ),
                    Text(
                      "Clients",
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      Divider(),
      Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.black,
                  //backgroundColor: Colors.black,
                  onSurface: Colors.purple,
                ),
                onPressed: () => {
                  navKey.currentState.pushNamed('/invoice'),
                },
                child: Column(
                  // Replace with a Row for horizontal icon + text
                  children: <Widget>[
                    FaIcon(
                      FontAwesomeIcons.fileInvoiceDollar,
                      size: 15,
                      color: Colors.black,
                    ),
                    Text(
                      "Invoice",
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      Divider(),
      Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.black,
                  //backgroundColor: Colors.black,
                  onSurface: Colors.purple,
                ),
                onPressed: () => {
                  navKey.currentState.pushNamed('/pays'),
                },
                child: Column(
                  // Replace with a Row for horizontal icon + text
                  children: <Widget>[
                    FaIcon(
                      FontAwesomeIcons.ccAmazonPay,
                      size: 15,
                      color: Colors.black,
                    ),
                    Text(
                      "Pays",
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      Divider(),
      Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.black,
                  //backgroundColor: Colors.black,
                  onSurface: Colors.purple,
                ),
                onPressed: () => {
                  navKey.currentState.pushNamed('/task'),
                },
                child: Column(
                  // Replace with a Row for horizontal icon + text
                  children: <Widget>[
                    FaIcon(
                      FontAwesomeIcons.tasks,
                      size: 15,
                      color: Colors.black,
                    ),
                    Text(
                      "Task",
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      Divider(),
      Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.black,
                  //backgroundColor: Colors.black,
                  onSurface: Colors.purple,
                ),
                onPressed: () => {
                  navKey.currentState.pushNamed('/reports'),
                },
                child: Column(
                  // Replace with a Row for horizontal icon + text
                  children: <Widget>[
                    FaIcon(
                      FontAwesomeIcons.chartPie,
                      size: 15,
                      color: Colors.black,
                    ),
                    Text(
                      "Reports",
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      Divider(),
    ],
        ),
      );
  }


  
  
  Container menuScreenDesktop(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 0, right: 10),
        alignment: Alignment.centerLeft,
        width: MediaQuery.of(context).size.width * 0.12,
        color: Color(0xFF808080).withOpacity(0.5),
        child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    mainAxisSize: MainAxisSize.max,
    children: [
      Row(
        children: [
          SizedBox(
            width: 7,
          ),
          FaIcon(
            FontAwesomeIcons.tachometerAlt,
            size: 25,
            color: Colors.black,
          ),
          SizedBox(
            width: 7,
          ),
          NavigationItem(
            selected: index == 0,
            title: 'Dashboard',
            routeName: routeDashboard,
            onHighlight: onHighlight,
          ),
        ],
      ),         
      Divider(),
      Row(
        children: [
          SizedBox(
            width: 7,
          ),
          FaIcon(
            FontAwesomeIcons.idBadge,
            size: 25,
            color: Colors.black,
          ),
          SizedBox(
            width: 7,
          ),
          NavigationItem(
            selected: index == 2,
            title: 'Clients',
            routeName: routeClient,
            onHighlight: onHighlight,
          ),
        ],
      ),
      Divider(),
      Row(
        children: [
          SizedBox(
            width: 7,
          ),
          FaIcon(
            FontAwesomeIcons.fileInvoiceDollar,
            size: 25,
            color: Colors.black,
          ),
          SizedBox(
            width: 7,
          ),
          NavigationItem(
            selected: index == 3,
            title: 'Invoice',
            routeName: routeInvoice,
            onHighlight: onHighlight,
          ),
        ],
      ),
      Divider(),
      Row(
        children: [
          SizedBox(
            width: 7,
          ),
          FaIcon(
            FontAwesomeIcons.ccAmazonPay,
            size: 25,
            color: Colors.black,
          ),
          SizedBox(
            width: 7,
          ),
          NavigationItem(
            selected: index == 4,
            title: 'Pays',
            routeName: routePays,
            onHighlight: onHighlight,
          ),
        ],
      ),
      Divider(),
      Row(
        children: [
          SizedBox(
            width: 7,
          ),
          FaIcon(
            FontAwesomeIcons.tasks,
            size: 25,
            color: Colors.black,
          ),
          SizedBox(
            width: 7,
          ),
          NavigationItem(
            selected: index == 5,
            title: 'Task',
            routeName: routeTask,
            onHighlight: onHighlight,
          ),
        ],
      ),
      Divider(),
      Row(
        children: [
          SizedBox(
            width: 7,
          ),
          FaIcon(
            FontAwesomeIcons.chartPie,
            size: 25,
            color: Colors.blue,
          ),
          SizedBox(
            width: 7,
          ),
          NavigationItem(
            selected: index == 6,
            title: 'Report',
            routeName: routeReports,
            onHighlight: onHighlight,
          ),
        ],
      ),
      Divider(
        color: Colors.black54,
        height: 20,
      ),
    ],
        ),
      );
  }

  void onHighlight(String route) {
    switch (route) {
      case routeDashboard:
        changeHighlight(0);
        break;
      case routeClient:
        changeHighlight(2);
        break;
      case routeInvoice:
        changeHighlight(3);
        break;
      case routePays:
        changeHighlight(4);
        break;
      case routeTask:
        changeHighlight(5);
        break;
      case routeReports:
        changeHighlight(6);
        break;
    }
  }

  void changeHighlight(int newIndex) {
    setState(() {
      index = newIndex;
    });
  }
}
