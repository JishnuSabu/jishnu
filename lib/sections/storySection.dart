import 'package:flutter/material.dart';
import 'package:jishnu/assets.dart';
import 'package:jishnu/widgets/storyCard.dart';
import 'package:jishnu/widgets/avatar.dart';

class StorySection extends StatelessWidget {
  const StorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: "Add To Story",
            avatar : dulquer,
            story: dulquer,
            createStoryStatus: true,
          ),
          StoryCard(
            labelText: "Mohan LaL",
            avatar : mohanlal,
            story: diwali,
            displayBorde: true,
          ),
          StoryCard(
            labelText: "Mammooty",
            avatar : mammooty,
            story: rorschach,
            displayBorde: true,
          ),
          StoryCard(
            labelText: "Surya",
            avatar : surya,
            story: award,
            displayBorde: true,
          ),
          StoryCard(
            labelText: "Vijay",
            avatar : vijay,
            story: varisu,
            displayBorde: true,
          ),
          StoryCard(
            labelText: "Mohan LaL",
            avatar : mohanlal,
            story: diwali,
            displayBorde: true,
          ),
          StoryCard(
            labelText: "Mammooty",
            avatar : mammooty,
            story: rorschach,
            displayBorde: true,
          ),
          StoryCard(
            labelText: "Surya",
            avatar : surya,
            story: award,
            displayBorde: true,
          ),

        ],
      ),
    );
  }
}
