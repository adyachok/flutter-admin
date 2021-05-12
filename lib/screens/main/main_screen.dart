import 'package:admin/components/side_nav.dart';
import 'package:admin/controllers/MenuController.dart';
import 'package:admin/responsive.dart';
import 'package:admin/screens/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: SideNav(),
      body: SafeArea(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // We want this slide meny only for large screen
          if (Responsive.isDesktop(context)) Expanded(child: SideNav()),
          Expanded(flex: 5, child: DashboardScreen())
        ],
      )),
    );
  }
}
