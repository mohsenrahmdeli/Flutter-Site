import 'package:flutter/material.dart';

import '../constans/color.dart';
import '../constans/nav_items.dart';
import '../constans/size.dart';
import '../constans/skills_item.dart';
import '../styles/style.dart';
import '../widgets/drawer_mobile.dart';
import '../widgets/header_desktop.dart';
import '../widgets/header_mobile.dart';
import '../widgets/main_desktop.dart';
import '../widgets/main_mobile.dart';
import '../widgets/site_logo.dart';
import '../widgets/skills_desktop.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: CustomColor.scaffoldBg,
        endDrawer:
            constraints.maxWidth >= kMinDesktopWidth ? null : DrawerMobile(),
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
            if (constraints.maxWidth >= kMinDesktopWidth)
              MainDesktop()
            else
              MAinMobile(),
            //Skill
            Container(
              width: screenWidth,
              color: CustomColor.bgLight1,
              padding: EdgeInsets.fromLTRB(
                25,
                20,
                25,
                60,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'What can I do?',
                    style: TextStyle(
                      fontSize: 24,
                      color: CustomColor.whitePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  SkillsDesktop(),
                ],
              ),
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
