import 'package:admin_dashboard/helpers/responsiveness.dart';
import 'package:admin_dashboard/widgets/large_screen.dart';
import 'package:admin_dashboard/widgets/small_screen.dart';
import 'package:flutter/material.dart';

class AppLayout extends StatelessWidget {
  const AppLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
