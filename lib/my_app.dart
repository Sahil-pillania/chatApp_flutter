import 'package:chatapp/channel_page.dart';
import 'package:flutter/material.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.client, required this.channel});

  final StreamChatClient client;
  final Channel channel;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Chat Application',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: StreamChannel(channel: channel, child: ChannelPage()),
        builder: (context, child) {
          return StreamChat(client: client, child: child);
        });
  }
}
