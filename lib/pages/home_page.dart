import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mailer/pages/chats_page.dart';
import 'package:mailer/providers/common.dart';

class MailerHome extends ConsumerWidget {
  const MailerHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final shouldWelcomeUser = watch(welcomeUser);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: shouldWelcomeUser.state
          ? null
          : AppBar(
            centerTitle: true,
              title:Text(
                  "Chats",
                  style: TextStyle(color: Colors.black),
                ),
              backgroundColor: Colors.white70,
              elevation: 0,
            ),
      body: SafeArea(
        child: Center(
          child: shouldWelcomeUser.state ? WelcomePage() : ChatsPage(),
        ),
      ),
    );
  }
}

class WelcomePage extends ConsumerWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final shouldWelcomeUser = watch(welcomeUser);
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Hi Ricki",
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.height * .05,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Welcome Back",
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.height * .04,
              fontWeight: FontWeight.w100,
            ),
          ),
          Image.asset(
            "assets/images/288ppi/mailerxxxhdpi.png",
            height: MediaQuery.of(context).size.height * .5,
          ),
          Column(
            children: [
              Text(
                "You have unread letters",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: MediaQuery.of(context).size.height * .025,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "12",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * .15,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              shouldWelcomeUser.state = !shouldWelcomeUser.state;
            },
            child: Container(
              height: MediaQuery.of(context).size.height * .12,
              width: MediaQuery.of(context).size.height * .12,
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
