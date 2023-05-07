import 'package:flutter/material.dart';
import 'package:chat/models/Chat.dart';
import '../../../constants.dart';

class ChatCard extends StatelessWidget {
  ChatCard({
    Key? key,
    required this.chat,
    required this.press,
    required this.onJoinPressed,
    required this.passwordController,
  }) : super(key: key);

  final Chat chat;
  final VoidCallback press;
  final VoidCallback onJoinPressed;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Enter Password'),
              content: TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    if (passwordController.text == chat.password) {
                      press();
                      Navigator.of(context).pop();
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Incorrect password'),
                        ),
                      );
                    }
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      },
      onLongPress: onJoinPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultPadding * 0.75),
        child: Row(
          children: [
            CircleAvatar(
              radius: 24,
              child: Text(
                chat.iconNumber.toString(),
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(width: kDefaultPadding),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    chat.groupName,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 8),
                  Opacity(
                    opacity: 0.64,
                    child: Text(
                      chat.lastMessage,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Text(chat.time),
                SizedBox(height: 5),
                chat.unreadCount == 0
                    ? SizedBox.shrink()
                    : CircleAvatar(
                        radius: 12,
                        child: Text(chat.unreadCount.toString()),
                      ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
