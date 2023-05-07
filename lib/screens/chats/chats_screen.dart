import 'package:chat/constants.dart';
import 'package:flutter/material.dart';
import 'package:chat/screens/chats/components/chat_card.dart';
import 'package:chat/models/Chat.dart';

import 'components/body.dart';

class ChatsScreen extends StatefulWidget {
  final String groupName;
  const ChatsScreen({Key? key, required this.groupName}) : super(key: key);

  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  int _selectedIndex = 1;
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kPrimaryColor,
        child: Icon(
          Icons.person_add_alt_1,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      onTap: (value) {
        setState(() {
          _selectedIndex = value;
        });
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.messenger), label: "Chats"),
        BottomNavigationBarItem(icon: Icon(Icons.people), label: "people"),
        BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
        BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 14,
              backgroundImage: AssetImage("assets/images/user_2.png"),
            ),
            label: "Profile"),
      ],
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      automaticallyImplyLeading: false,
      title: Text("Chats"),
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        ),
      ],
    );
  }

  void _joinGroupChat(String groupName) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Join Group Chat"),
        content: TextField(
          decoration: InputDecoration(hintText: "Enter group password"),
          onChanged: (value) {
            // Do something with the user input.
          },
        ),
        actions: <Widget>[
          TextButton(
            child: Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: Text('OK'),
            onPressed: () {
              // Check the entered password and navigate to the chat screen.
              if (groupName == "Group 1") {
                if (_passwordController.text == "group1") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ChatCard(
                            chat: Chat(
                                groupName: "Group 1",
                                iconNumber: 1,
                                password: 'group1',
                                lastMessage: 'Welcome to group 1',
                                time: '3m ago'),
                            press: () {},
                            onJoinPressed: () {},
                            passwordController: _passwordController)),
                  );
                } else {
                  // Show an error message if the password is incorrect.
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Incorrect password!')),
                  );
                }
              } else if (groupName == "Group 2") {
                if (_passwordController.text == "group2") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ChatsScreen(
                              groupName: 'Group 2',
                            )),
                  );
                } else {
                  // Show an error message if the password is incorrect.
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Incorrect password!')),
                  );
                }
              }
            },
          ),
        ],
      ),
    );
  }
}
