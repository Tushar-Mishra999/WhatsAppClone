import 'package:flutter/material.dart';
import 'dart:math';

import 'package:whatsapp_ui/ChatMessage.dart';

class ChatScreen extends StatelessWidget {
  final String nameee;
  final String pathhh;
  ChatScreen({required this.nameee, required this.pathhh});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF075e54),
      body: SafeArea(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.only(top: 10),
              color: Color(0xFF075e54),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Icon(
                      Icons.arrow_back,
                      size: 27,
                      color: Colors.white,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage('Images/$pathhh'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    nameee,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.video_call,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.call,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            Divider(),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.blueGrey,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ChatMessage(
                        message: ' Hi',
                        receiver: true,
                      ),
                      ChatMessage(
                        message: 'HAT',
                        receiver: false,
                      ),
                      ChatMessage(
                        message: ' What',
                        receiver: true,
                      ),
                      ChatMessage(
                        message: ' Chal bey',
                        receiver: false,
                      ),
                      ChatMessage(
                        message: ' Why',
                        receiver: true,
                      ),
                      ChatMessage(
                        message: ' Get Lost',
                        receiver: false,
                      ),
                      ChatMessage(
                        message: 'Crying Silently',
                        receiver: true,
                      ),
                      ChatMessage(
                        message: 'Ab ki baar Gautam Sarkar',
                        receiver: false,
                      ),
                      ChatMessage(
                        message: ' Nhi Kejriwal',
                        receiver: true,
                      ),
                      ChatMessage(
                        message: 'HAT',
                        receiver: false,
                      ),
                      ChatMessage(
                        message: ' What',
                        receiver: true,
                      ),
                      ChatMessage(
                        message: ' I will kick your aSS',
                        receiver: false,
                      ),
                      ChatMessage(
                        message: ' I know Devansh',
                        receiver: true,
                      ),
                      ChatMessage(
                        message: ' Lord Devansh',
                        receiver: false,
                      ),
                      ChatMessage(
                        message: 'He is your fan',
                        receiver: true,
                      ),
                      ChatMessage(
                        message: 'Good Boy',
                        receiver: false,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.blueGrey,
              child: Container(
                height: 50,
                //margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.emoji_emotions_outlined,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Type a message',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Spacer(),
                    Transform.rotate(
                        angle: pi / 2 + (pi / 6),
                        child: Icon(
                          Icons.attach_file,
                          color: Colors.grey,
                        )),
                    SizedBox(width: 10),
                    Icon(
                      Icons.camera_alt,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.mic,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
