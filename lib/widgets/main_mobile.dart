import 'package:flutter/material.dart';
import '../constans/color.dart';

class MAinMobile extends StatelessWidget {
  const MAinMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 40.0,
        vertical: 30.0,
      ),
      height: screenHeight,
      constraints: BoxConstraints(
        minHeight: 560.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(colors: [
                CustomColor.scaffoldBg.withOpacity(0.6),
                CustomColor.scaffoldBg.withOpacity(0.6),
              ]).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              'assets/images/1.jpg',
              width: screenWidth / 2,
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Text(
            "Hi,\nI'm MohsenRahmdeli\na Flutter Developer",
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              height: 1.5,
              color: CustomColor.whitePrimary,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          SizedBox(
            width: 180.0,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Gets'),
            ),
          ),
        ],
      ),
    );
  }
}
