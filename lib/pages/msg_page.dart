import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mailer/contants.dart';
import 'package:mailer/widgets/chat_bubble.dart';

class MsgPage extends ConsumerWidget {
  const MsgPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(color: pColor),
        title: Text(
          "Olivia",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          CircleAvatar(),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 12,
                itemBuilder: (BuildContext context, int index) {
                  return ChatBubble();
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(Icons.attach_file),
              hintText: "Say Something...",
              suffixIcon: Icon(Icons.emoji_emotions_outlined),
              suffix: IconButton(icon: Icon(Icons.send), onPressed: (){}),
            ),
          ),
        ),
      ),
    );
  }
}

