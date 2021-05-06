import 'package:flutter/material.dart';
import 'package:mailer/contants.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({
    Key? key,
    this.onTap,
  }) : super(key: key);

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: ListTile(
        onTap: this.onTap,
        title: Text("Olivia"),
        subtitle: Text("What do you mean?"),
        leading: CircleAvatar(
          radius: 36,
          child: Icon(
            Icons.person,
            size: 36,
          ),
        ),
        trailing: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            color: pColor,
            shape: CircleBorder(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("12"),
            ),
          ),
        ),
      ),
    );
  }
}
