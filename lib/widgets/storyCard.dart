import 'package:flutter/material.dart';
import 'package:jishnu/assets.dart';
import 'package:jishnu/widgets/avatar.dart';

import 'appBarButton.dart';

class StoryCard extends StatelessWidget {
  final String labelText;
  final String story;
  final String avatar;
  final bool createStoryStatus;
  final bool displayBorde;

  StoryCard({required this.labelText, required this.story, required this.avatar, this.createStoryStatus = false, this.displayBorde = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(
        left: 5,
        right: 5,
        top: 10,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(story), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 5,
            top: 5,
            child: createStoryStatus ? AppBarButton(
                buttonIcon: Icons.add,
                iconColor: Colors.blue,
                buttonAction: () {
                  print("Create New Story");
                },): Avatar(
              displayImage: avatar,
              displayStatus: false,
              displayBorder: displayBorde,
              width: 35,
              height: 35,
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(labelText,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
