import 'package:flutter/material.dart';
import 'package:mailer/contants.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: pColor,
      margin: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * .18,
          right: 8,
          top: 8,
          bottom: 8),
      child: ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("You"),
            Text("Now"),
          ],
        ),
        subtitle: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
              "How do you feel? I'd like to suggest to meet tomorrow and discuss everything in detail."),
        ),
      ),
    );
  }
}
