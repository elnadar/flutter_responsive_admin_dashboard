import 'package:flutter/material.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key, this.sideBarFlex = 1, this.mainBarFlex = 5})
      : super(key: key);
  final int sideBarFlex;
  final int mainBarFlex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: sideBarFlex,
          child: Container(
            color: Colors.red,
          ),
        ),
        Expanded(
          flex: mainBarFlex,
          child: Container(
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
