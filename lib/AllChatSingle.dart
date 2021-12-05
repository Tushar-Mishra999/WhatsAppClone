import 'package:flutter/material.dart';
import 'package:whatsapp_ui/ChatScreen.dart';

class SingleChat extends StatelessWidget {
  final String name;
  final String path;
  SingleChat({required this.name, required this.path});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ChatScreen(nameee: name, pathhh: path);
            },
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(10, 18, 5, 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage('Images/$path'),
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 4),
                Text(
                  name,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                SizedBox(height: 5),
                Text(
                  'Hi Bro!',
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
            Spacer(),
            Text('18:00', style: TextStyle(color: Colors.grey[500])),
          ],
        ),
      ),
    );
  }
}
