import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mailer/contants.dart';
import 'package:mailer/pages/msg_page.dart';
import 'package:mailer/widgets/chat_tile.dart';

class ChatsPage extends ConsumerWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Column(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search),
                hintText: "Search",
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "All chats",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 15,
            itemBuilder: (BuildContext context, int index) {
              return ChatTile(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => MsgPage()));
                },
              );
            },
          ),
        ),
      ],
    );
  }
}

