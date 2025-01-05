import 'package:flutter/material.dart';

import '../constans/color.dart';
import '../constans/nav_items.dart';
import '../constans/size.dart';
import '../styles/style.dart';
import '../widgets/drawer_mobile.dart';
import '../widgets/header_desktop.dart';
import '../widgets/header_mobile.dart';
import '../widgets/site_logo.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: CustomColor.scaffoldBg,
        endDrawer: constraints.maxWidth >= kMinDesktopWidth ? null : DrawerMobile(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            //Main
            if (constraints.maxWidth >= kMinDesktopWidth)
              HeaderDesktop()
            else
              HeaderMobile(
                onLogoTap: () {},
                onMenuTap: () {
                  scaffoldKey.currentState!.openEndDrawer();
                },
              ),
            //Skill
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.blueGrey,
            ),
            Container(
              height: 500,
              width: double.maxFinite,
            ),
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.blueGrey,
            ),
            Container(
              height: 500,
              width: double.maxFinite,
            ),
          ],
        ),
      );
    });
  }
}
