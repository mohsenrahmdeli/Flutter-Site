import 'package:flutter/material.dart';
import '../constans/color.dart';
import '../constans/skills_item.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 500,
      ),
      child: Column(
        children: [
          for (int i = 0; i < platformItems.length; i++)
            Container(
              margin: EdgeInsets.only(
                bottom: 5.0,
              ),
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: CustomColor.bgLight2,
                borderRadius: BorderRadius.circular(
                  5.0,
                ),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                leading: Image.asset(
                  platformItems[i]['img'],
                  width: 26.0,
                ),
                title: Text(platformItems[i]['title']),
              ),
            ),
          SizedBox(
            height: 50.0,
          ),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.center,
            children: [
              for (int i = 0; i < skillItems.length; i++)
                Chip(
                  backgroundColor: CustomColor.bgLight2,
                  padding: EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 16,
                  ),
                  label: Text(
                    skillItems[i]['title'],
                  ),
                  avatar: Image.asset(
                    skillItems[i]['img'],
                  ),
                )
            ],
          ),
        ],
      ),
    );
  }
}
