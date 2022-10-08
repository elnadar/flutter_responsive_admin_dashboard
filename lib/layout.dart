import 'package:admin_dashboard/helpers/responsiveness.dart';
import 'package:admin_dashboard/widgets/large_screen.dart';
import 'package:admin_dashboard/widgets/small_screen.dart';
import 'package:flutter/material.dart';

class AppLayout extends StatelessWidget {
  AppLayout({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        key: scaffoldKey,
        leading: !ResponsiveWidget.isSmallScreen(context)
            ? Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: Image.asset(
                      'assets/icons/logo.png',
                      width: 28,
                    ),
                  )
                ],
              )
            : IconButton(
                onPressed: () {
                  scaffoldKey.currentState?.openDrawer();
                },
                icon: const Icon(Icons.menu)),
      ),
      body: const ResponsiveWidget(
        largeScreen: LargeScreen(),
        mediumScreen: LargeScreen(
          sideBarFlex: 3,
          mainBarFlex: 6,
        ),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
