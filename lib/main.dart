import 'package:admin_dashboard/constants/style.dart';
import 'package:admin_dashboard/layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return GetMaterialApp(
      title: 'Admin Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: Theme.of(context).appBarTheme.copyWith(
              elevation: 0,
              color: Colors.white,
              iconTheme: theme.iconTheme.copyWith(
                color: dark,
              ),
            ),
        textTheme: GoogleFonts.mulishTextTheme(
          theme.textTheme,
        ).apply(
          bodyColor: Colors.black,
        ),
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.windows: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.linux: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.macOS: FadeUpwardsPageTransitionsBuilder(),
          },
        ),
      ),
      home: AppLayout(),
      debugShowCheckedModeBanner: false,
    );
  }
}
