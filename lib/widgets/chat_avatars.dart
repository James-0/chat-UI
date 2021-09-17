import 'package:chat_app/models/message_model.dart';
import 'package:flutter/material.dart';

import 'chat_screen.dart';

class SeeChatAvatars extends StatefulWidget {
  const SeeChatAvatars({Key? key}) : super(key: key);

  @override
  _SeeChatAvatarsState createState() => _SeeChatAvatarsState();
}

class _SeeChatAvatarsState extends State<SeeChatAvatars> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 60.0),
        height: 250.0,
        color: Theme.of(context).primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 30.0),
              child: Text(
                'Chat with\nyour friends',
                style: TextStyle(
                    fontSize: 28.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 100.0,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: peoples.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => ChatScreen(peoples[index]))),
                        child: CircleAvatar(
                          radius: 25.0,
                          backgroundColor: Colors.white,
                          child: Center(
                            child: CircleAvatar(
                              radius: 15.0,
                              backgroundImage: AssetImage(
                                peoples[index].imageUrl ?? '',
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ));
  }
}
