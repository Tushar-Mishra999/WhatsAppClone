import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  final String message;
  final bool receiver;
  ChatMessage({required this.message, required this.receiver});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          receiver == true ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 5),
            child: Text(
              message,
              style: TextStyle(fontSize: 15),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: receiver == true
                      ? Radius.circular(0)
                      : Radius.circular(10),
                  topLeft: receiver == true
                      ? Radius.circular(10)
                      : Radius.circular(0),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              color: receiver == true ? Color(0xffdcf8c6) : Colors.white,
            ))
      ],
    );
  }
}
