
import 'package:flutter/material.dart';
import 'package:jishnu/assets.dart';
import 'package:jishnu/sections/roomSection.dart';
import 'package:jishnu/widgets/appBarButton.dart';
import 'package:jishnu/sections/statusSections.dart';
import 'package:jishnu/sections/headerButtonSection.dart';
import 'package:jishnu/sections/roomSection.dart';
import 'package:jishnu/widgets/headerButton.dart';
import 'package:jishnu/widgets/postCard.dart';
import 'package:jishnu/widgets/storyCard.dart';
import 'package:jishnu/sections/storySection.dart';
import 'package:jishnu/sections/suggestionSection.dart';
class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Divider(
      thickness: 1,
      color: Colors.grey[300],
    );
    Widget thickDivider = Divider(
      thickness: 10,
      color: Colors.grey[300],
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            AppBarButton(
                buttonIcon: Icons.search,
                buttonAction: () {
                  print("search screen appears");
                }),
            AppBarButton(
                buttonIcon: Icons.chat,
                buttonAction: () {
                  print("chat screen appears");
                }),
          ],
        ),
        body: ListView(
          children: [
            StatusSections(),
            thinDivider,
            HeaderButtonSection(
              buttonOne: headerButton(
                  buttonText: "Live",
                  buttonIcon: Icons.video_call,
                  buttonAction: () {
                    print("Go Live");
                  },
                  buttonColor: Colors.red),
              buttonTwo: headerButton(
                  buttonText: "Photo",
                  buttonIcon: Icons.photo_library,
                  buttonAction: () {
                    print("Take Photo");
                  },
                  buttonColor: Colors.green),
              buttonThree: headerButton(
                  buttonText: "Room",
                  buttonIcon: Icons.video_call,
                  buttonAction: () {
                    print("Create Room ");
                  },
                  buttonColor: Colors.purple),
            ),
            thickDivider,
            RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
            PostCard(
              avatar: mohanlal,
              name: "Mohanlal",
              publishedAt: "5h",
              postImage: diwali,
              postTitle: "Happy Diwali",
              showBlueTick: true,
              likeCount: "10K",
              shareCount: "1K",
              commentCount: "1K",
            ),
            thickDivider,
            PostCard(
              avatar: mammooty,
              name: "mammooty",
              publishedAt: "1 day ago",
              postImage: rorschach,
              postTitle: "Rorschach in theatres",
              showBlueTick: true,
              likeCount: "9K",
              shareCount: "1.5K",
              commentCount: "1K",
            ),
            thickDivider,
            SuggestionSection(),
            thickDivider,
            PostCard(
              avatar: vijay,
              name: "vijay",
              publishedAt: "10h",
              postImage: varisu,
              postTitle: "",
              showBlueTick: true,
              likeCount: "40K",
              shareCount: "5K",
              commentCount: "4K",
            ),
            thickDivider,
          ],
        ),
      ),
    );
  }
}
