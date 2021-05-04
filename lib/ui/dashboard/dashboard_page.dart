import 'package:dashboard/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';


//stf

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {


 
  @override
  Widget build(BuildContext context) {
    AppScale _scale = AppScale(context);

    //double height = MediaQuery.of(context).size.height;

    //sm for small screens > 575px and < 768px
    // md for medium screens > 767px and < 992px
    // lg for large screens > 991px and < 1200px
    // xl for extra large screens > 1199px   

    return Scaffold(
      body: SingleChildScrollView(
        child: BootstrapContainer(
          fluid: true,
          decoration: BoxDecoration(color: Colors.blue),      
        children: [
          Material(
              elevation: 20,
              child: BootstrapContainer(
                fluid: true,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: BootstrapRow(
                      height: _scale.labelDim * 0.2,
                      children: <BootstrapCol>[
                        BootstrapCol(
                          sizes: 'col-12',
                          child: Row(
                            children: [
                              FlutterLogo(size: _scale.labelDim * 3),
                              Text(
                                'Flutter',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: _scale.labelDim * 3),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: BootstrapRow(
                      height: 60, //es obligatorio poner una altura al container
                      children: [
                        BootstrapCol(
                          sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3',
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 100,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        BootstrapCol(
                          sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3',
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                              height: 100,
                              color: Colors.purple,
                            ),
                          ),
                        ),
                        BootstrapCol(
                          sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3',
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                              height: 100,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        BootstrapCol(
                          sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3',
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                              height: 100,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: BootstrapRow(
                      height: 60, //es obligatorio poner una altura al container
                      children: [
                        BootstrapCol(
                          sizes: 'col-6',
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                              height: 100,
                              color: Colors.green[800],
                            ),
                          ),
                        ),
                        BootstrapCol(
                          sizes: 'col-6',
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                              height: 100,
                              color: Colors.orange[300],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //Divider(color: Colors.purple,),
                   Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: BootstrapRow(
                      height: 60, //es obligatorio poner una altura al container
                      children: [
                        BootstrapCol(
                         sizes: 'col-12 col-sm-12 col-md-4 col-lg-3 col-xl-4',
                      orders:
                          'order-4 order-sm-4 order-md-4 order-lg-4 order-xl-4',
                      invisibleForSizes: 'sml',
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                              height: 250,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        BootstrapCol(
                         sizes: 'col-12 col-sm-12 col-md-4 col-lg-3 col-xl-4',
                      orders:
                          'order-4 order-sm-4 order-md-4 order-lg-4 order-xl-4',
                      invisibleForSizes: 'sm',
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                              height: 250,
                              color: Colors.blue[900],
                            ),
                          ),
                        ),
                        BootstrapCol(
                         sizes: 'col-12 col-sm-12 col-md-4 col-lg-3 col-xl-4',
                      orders:
                          'order-4 order-sm-4 order-md-4 order-lg-4 order-xl-4',
                      invisibleForSizes: 'sm',
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                              height: 250,
                              color: Colors.purple[900],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //Divider(color: Colors.purple,),
                   Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: BootstrapRow(
                      height: 60, //es obligatorio poner una altura al container
                      children: [
                        BootstrapCol(
                          sizes: 'col-12',
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                              height: 150,
                              color: Colors.orange,
                            ),
                          ),
                        ),
                       
                      ],
                    ),
                  ),
                  
                ],
              ),
            ),
        ],
      ),
      ),
    );
  }
}

