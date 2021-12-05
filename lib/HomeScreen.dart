import 'package:flutter/material.dart';

import 'AllChatSingle.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        padding: EdgeInsets.fromLTRB(10, 10, 0, 15),
        color: Color(0xFF075e54),
        child: Row(
          children: [
            Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
            Spacer(
              flex: 2,
            ),
            Text(
              'CHATS',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Spacer(flex: 2),
            Text('STATUS',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            Spacer(
              flex: 2,
            ),
            Text('CALLS',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
      Container(
        height: 700,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SingleChat(name: 'Bhuvneshvar K', path: 'Bhuvi.png'),
              SingleChat(name: 'Virat Kohli', path: 'VK.png'),
              SingleChat(name: 'Dinesh Kartik', path: 'dinesh-karthik.jpeg'),
              SingleChat(name: 'Bumrah Jassi', path: 'Bumrah.jpeg'),
              SingleChat(name: 'Gautam BJP', path: 'GG.jpeg'),
              SingleChat(name: 'Ishant Lambu', path: 'Ishant.jpeg'),
              SingleChat(name: 'DHONI pa', path: 'MSD.jpeg'),
              SingleChat(name: 'RAVI Bhai', path: 'RAVI.jpeg'),
              SingleChat(name: 'Vada PAV', path: 'Rohit.jpeg'),
              SingleChat(name: 'Mo Shami', path: 'SHAMI.jpeg'),
            ],
          ),
        ),
      )
    ]);
  }
}
