import 'package:flutter/material.dart';
import '../constans/color.dart';
import '../constans/nav_items.dart';
import '../styles/style.dart';
import 'site_logo.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 60.0,
            margin: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10.0,
            ),
            width: double.maxFinite,
            decoration: kHeaderDecoration,
            child: Row(
              children: [
                SiteLogo(
                  onTap: (){},
                ),
                Spacer(),
                for (int i = 0; i < navTitles.length; i++)
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 20.0,
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        navTitles[i],
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                          color: CustomColor.whitePrimary,
                        ),
                      ),
                    ),
                  )
              ],
            ),
          );
  }
}