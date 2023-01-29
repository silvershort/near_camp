import 'package:flutter/material.dart';
import 'package:near_camp/ui/dashboard/widget/bottom_navigation_widget.dart';

class DashboardScreen extends StatelessWidget {
  final Widget child;
  final String location;

  const DashboardScreen({
    Key? key,
    required this.child,
    required this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationWidget(location: location),
    );
  }
}
