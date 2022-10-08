import 'package:admin_dashboard/helpers/responsiveness.dart';
import 'package:admin_dashboard/widgets/custom_text.dart';
import 'package:admin_dashboard/widgets/large_screen.dart';
import 'package:admin_dashboard/widgets/small_screen.dart';
import 'package:flutter/material.dart';

import 'constants/style.dart';

class AppLayout extends StatelessWidget {
  AppLayout({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Row(
          children: [
            const CustomText(
              'Dash',
              color: lightGrey,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
              ),
            ),
            Stack(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications),
                ),
                Positioned(
                  top: 7,
                  right: 7,
                  child: SizedBox(
                    height: 12,
                    width: 12,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: active,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: light, width: 2),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              width: 1,
              height: 22,
              child: ColoredBox(color: dark),
            ),
            const SizedBox(
              width: 24,
            ),
            if (!ResponsiveWidget.isSmallScreen(context))
              Row(
                children: const [
                  CustomText(
                    'Ahmed Mahdy',
                    color: lightGrey,
                    fontSize: 16,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                ],
              ),
            const Center(
              child: Padding(
                padding: EdgeInsets.all(4.0),
                child: CircleAvatar(
                  foregroundColor: dark,
                  backgroundColor: light,
                  child: Icon(Icons.person_outline),
                ),
              ),
            )
          ],
        ),
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
      drawer: const Drawer(),
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
