import 'package:flutter/material.dart';
import '../constans/color.dart';
import '../constans/nav_items.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColor.scaffoldBg,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20, top: 20, bottom: 20.0),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.close),
              ),
            ),
          ),
          for (int i = 0; i < navIcon.length; i++)
            ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 30.0,
              ),
              titleTextStyle: TextStyle(
                color: CustomColor.whitePrimary,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
              onTap: () {},
              leading: Icon(navIcon[i]),
              title: Text(navTitles[i]),
            )
        ],
      ),
    );
  }
}
