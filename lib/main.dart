import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mailer/contants.dart';
import 'package:mailer/pages/home_page.dart';

void main() {
  runApp(ProviderScope(child: MailerApp(),));
}

class MailerApp extends ConsumerWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return MaterialApp(
      title: 'Mailer',
      theme: ThemeData(
        accentColor: pColor,
        fontFamily: "Montserrat",
      ),
      home: MailerHome(),
    );
  }
}
