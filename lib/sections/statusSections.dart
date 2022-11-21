import 'package:flutter/material.dart';
import 'package:jishnu/assets.dart';
import 'package:jishnu/widgets/avatar.dart';

class StatusSections extends StatelessWidget {
  const StatusSections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(displayImage: dulquer,displayStatus: false,),
      title: TextField(
        decoration: InputDecoration(
          hintText: "What's on your mind?",
          hintStyle: TextStyle(color: Colors.black),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),);
  }
}
