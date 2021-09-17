import 'package:chat_app/widgets/recent_chats.dart';
import 'package:flutter/material.dart';

import 'chat_avatars.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [SeeChatAvatars(), RecentChats()],
      ),
    );
  }
}
