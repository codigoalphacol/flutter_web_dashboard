
import 'package:dashboard/routes/routes.dart';
import 'package:dashboard/ui/clients/client_page.dart';
import 'package:dashboard/ui/dashboard/dashboard_page.dart';
import 'package:dashboard/ui/invoces/invoice_page.dart';
import 'package:dashboard/ui/pays/pays_page.dart';
import 'package:dashboard/ui/reports/reports_page.dart';
import 'package:dashboard/ui/task/task_page.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeDashboard:
        return MaterialPageRoute(builder: (_) => DashboardPage());
        break;
      case routeClient:
        return MaterialPageRoute(builder: (_) => ClientPage());
        break;
      case routeInvoice:
        return MaterialPageRoute(builder: (_) => InvoicePage());
        break;
      case routePays:
        return MaterialPageRoute(builder: (_) => PaysPage());
        break;  
      case routeTask:
        return MaterialPageRoute(builder: (_) => TaskPage());
        break;  
      case routeReports:
        return MaterialPageRoute(builder: (_) => ReportsPage());
        break;      
    }
  }
}
