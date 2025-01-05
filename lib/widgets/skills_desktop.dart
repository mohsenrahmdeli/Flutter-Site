import 'package:flutter/material.dart';
import '../constans/color.dart';
import '../constans/skills_item.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 450.0,
          ),
          child: Wrap(
            spacing: 5,
            runSpacing: 5,
            children: [
              for (int i = 0; i < platformItems.length; i++)
                Container(
                  width: 200,
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
            ],
          ),
        ),
        SizedBox(
          width: 50.0,
        ),
        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 500.0,
            ),
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
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
          ),
        )
      ],
    );
  }
}
