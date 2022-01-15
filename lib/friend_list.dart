import 'package:custom_widget_practise/Model/user.dart';
import 'package:flutter/material.dart';

class FriendList extends StatelessWidget {
  const FriendList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //userList
    List<User> userList = [
      User(Colors.red, "Aqeel Husny", 5),
      User(Colors.blue, "Muksith Bwoi", 0),
      User(Colors.amber, "Poorna Sandukiran", 2),
      User(Colors.teal, "Budhdhi Prabhath", 3),
      User(Colors.brown, "Saman Perera", 0),
    ];

    return Scaffold(
      //Appbar
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Friend List"),
      ),

      //Body
      // body:ListView(   //Column + SinglechildScrollView
      //   children: const [
      //     Text("Friend 1"),
      //     Text("Friend 2"),
      //     Text("Friend 3"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //     Text("Friend"),
      //   ],
      // ),

      body: ListView.builder(
        itemCount: userList.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: userList[index].color,
            ),
            title: Text(userList[index].name),
            subtitle: userList[index].mutualFriends == 0
                ? null
                : Text(
                    "${userList[index].mutualFriends} mutual friend",
                  ),
            trailing: const Icon(Icons.chat),
          );
        },
      ),
    );
  }
}
