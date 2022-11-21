import 'package:flutter/material.dart';
import 'package:jishnu/assets.dart';
import 'package:jishnu/widgets/avatar.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          createRoomButton(),
          Avatar(
            displayImage: dulquer, displayStatus: true,
          ),
          Avatar(
            displayImage: mohanlal, displayStatus: true,
          ),
          Avatar(
            displayImage: mammooty, displayStatus: true,
          ),
          Avatar(
            displayImage: surya, displayStatus: true,
          ),
          Avatar(
            displayImage: vijay, displayStatus: true,
          ),
          Avatar(
            displayImage: dulquer, displayStatus: true,
          ),
          Avatar(
            displayImage: mohanlal, displayStatus: true,
          ),
          Avatar(
            displayImage: surya, displayStatus: true,
          ),
          FittedBox()
        ],
      ),
    );
  }

  Widget createRoomButton() {
    return OutlinedButton.icon(
      icon: Icon(
        Icons.video_call,
        color: Colors.purple,
      ),
      label: Text(
        "Create \nRoom",
        style: TextStyle(
          color: Colors.blue,
        ),
      ),
      onPressed: () {
        print("Create a chat room");
      },
      style: ElevatedButton.styleFrom(
        shape: StadiumBorder(),
        side: BorderSide(
          width: 2.0,
          color: Colors.blue.shade100,
        ),
      ),
    );

  }
}
