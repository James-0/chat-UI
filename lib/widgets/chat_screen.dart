import 'package:chat_app/models/message_model.dart';
import 'package:chat_app/models/user_model.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final User user;
  ChatScreen(this.user);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  _buildTexts(Message message, bool isMe) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.60,
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
      decoration: BoxDecoration(
          color: isMe ? Color(0xFFAABBCC) : Color(0xFFEEEEEE),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
              bottomLeft: isMe ? Radius.circular(30.0) : Radius.circular(0.0),
              bottomRight:
                  isMe ? Radius.circular(0.0) : Radius.circular(30.0))),
      margin: isMe
          ? EdgeInsets.only(top: 8.0, bottom: 8.0, left: 70.0)
          : EdgeInsets.only(top: 8.0, bottom: 8.0, right: 70.0),
      child: Text(
        message.text!,
        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15.0),
      ),
    );
  }

  _buildMessage(Message message, bool isMe) {
    return Container(
        child: isMe
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Text(
                      message.time!,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0,
                          color: Color(0xFF777777)),
                    ),
                    _buildTexts(message, isMe)
                  ])
            : Row(children: [
                _buildTexts(message, isMe),
                Text(
                  message.time!,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.0,
                      color: Color(0xFF777777)),
                )
              ]));
  }

  _composeMessage() {
    return Container(
      height: 50.0,
      padding: EdgeInsets.only(left: 20.0, right: 5.0),
      margin: EdgeInsets.symmetric(horizontal: 30.0),
      decoration: BoxDecoration(
          color: Color(0xFFF2F2F2),
          borderRadius: BorderRadius.all(Radius.circular(40.0))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: TextField(
                textCapitalization: TextCapitalization.sentences,
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration.collapsed(
                    hintText: 'Type your message...')),
          ),
          CircleAvatar(
              backgroundColor: Theme.of(context).primaryColor,
              radius: 18.0,
              child: Center(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.send_rounded),
                  iconSize: 20.0,
                  color: Colors.white,
                ),
              ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        toolbarHeight: 150.0,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        title: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Back',
                      style: TextStyle(fontSize: 14.0, color: Colors.white38),
                    ),
                  ),
                  Text(
                    'Search',
                    style: TextStyle(fontSize: 14.0, color: Colors.white38),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.user.name!,
                    style: TextStyle(fontSize: 35.0, color: Colors.white),
                  ),
                  Container(
                    width: 90.0,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white24,
                          radius: 20.0,
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.call,
                                color: Colors.white,
                              )),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white24,
                          radius: 20.0,
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.video_call,
                                color: Colors.white,
                              )),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(bottom: 6.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0))),
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 3.0, left: 20.0, right: 20.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0))),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0)),
                  child: ListView.builder(
                      reverse: false,
                      padding: EdgeInsets.only(top: 15.0),
                      itemCount: messages.length,
                      itemBuilder: (BuildContext context, int index) {
                        final Message message = messages[index];
                        final bool isMe = message.sender!.id == currentUser.id;
                        return _buildMessage(message, isMe);
                      }),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20.0),
              child: _composeMessage(),
            )
          ],
        ),
      ),
    );
  }
}
