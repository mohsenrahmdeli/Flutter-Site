import 'package:flutter/material.dart';
import '../constans/color.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      height: screenHeight / 1.2,
      constraints: BoxConstraints(
        minHeight: 350.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hi,\nI'm MohsenRahmdeli\na Flutter Developer",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                  color: CustomColor.whitePrimary,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              SizedBox(
                width: 250.0,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Gets'),
                ),
              ),
            ],
          ),
          Image.asset(
            'assets/images/1.jpg',
            width: screenWidth / 4,
          ),
        ],
      ),
    );
  }
}
