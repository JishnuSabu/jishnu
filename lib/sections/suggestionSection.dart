import 'package:flutter/material.dart';
import 'package:jishnu/widgets/suggestionCard.dart';

import '../assets.dart';

class SuggestionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420,
      child: Column(
        children: [
          ListTile(
            leading: Text("People you may know"),
            trailing: IconButton(
              onPressed: () {
                print("more clicked");
              },
              icon: Icon(
                Icons.more_horiz,
                color: Colors.grey[700],
              ),
            ),
          ),
          Container(
            height: 350,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SuggestionCard(
                  avatar: Pooja,
                  name: "Pooja Hegde",
                  mutualFriends: "7 Mutual Friends",
                  addFriend: () {
                    print("Request Friendship");
                  },
                  removeFriend: () {
                    print("Remove this person!!");
                  },
                ),
                SuggestionCard(
                  avatar: Karthik,
                  name: "Karthi",
                  mutualFriends: "10 Mutual Friends",
                  addFriend: () {
                    print("Request Friendship");
                  },
                  removeFriend: () {
                    print("Remove this person!!");
                  },
                ),
                SuggestionCard(
                  avatar: Mrunal,
                  name: "Mrunal Thakur",
                  mutualFriends: "3 Mutual Friends",
                  addFriend: () {
                    print("Request Friendship");
                  },
                  removeFriend: () {
                    print("Remove this person!!");
                  },
                ),
                SuggestionCard(
                  avatar: Fahadhh,
                  name: "Fahadh Fasil",
                  mutualFriends: "5 Mutual Friends",
                  addFriend: () {
                    print("Request Friendship");
                  },
                  removeFriend: () {
                    print("Remove this person!!");
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
