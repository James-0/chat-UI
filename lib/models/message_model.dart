import 'package:chat_app/models/user_model.dart';
import 'package:flutter/material.dart';

class Message {
  final User? sender;
  final String? time;
  final String? text;
  final bool? unread;
  final Color? color;

  Message({this.sender, this.time, this.text, this.unread, this.color});
}

final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'assets/images/0.jpg',
);
final User james = User(
  id: 1,
  name: 'James',
  imageUrl: 'assets/images/1.jpg',
);
final User john = User(
  id: 2,
  name: 'John',
  imageUrl: 'assets/images/2.jpg',
);
final User paul = User(
  id: 3,
  name: 'Paul',
  imageUrl: 'assets/images/3.jpg',
);
final User luke = User(
  id: 4,
  name: 'Luke',
  imageUrl: 'assets/images/4.jpg',
);
final User jake = User(
  id: 5,
  name: 'Jake',
  imageUrl: 'assets/images/5.jpg',
);
final User bola = User(
  id: 6,
  name: 'Bola',
  imageUrl: 'assets/images/6.jpg',
);
final User mike = User(
  id: 7,
  name: 'Mike',
  imageUrl: 'assets/images/7.jpg',
);
final User tola = User(
  id: 8,
  name: 'Tola',
  imageUrl: 'assets/images/8.jpg',
);
List<User> peoples = [james, john, bola, paul, luke, jake, mike, tola];

List<Message> chats = [
  Message(
      sender: james,
      time: '18:32',
      text: 'Hey there! What\'s up? is everything good?',
      unread: false,
      color: Colors.yellowAccent),
  Message(
      sender: john,
      time: '14:00',
      text: 'Yeah, do you have any good song',
      unread: false,
      color: Colors.pink),
  Message(
      sender: bola,
      time: '13:35',
      text: 'Hi! I went shopping today and found that',
      unread: false,
      color: Colors.brown),
  Message(
      sender: paul,
      time: '14:05',
      text: 'I passed you on the ride to work yesterday',
      unread: false,
      color: Colors.purpleAccent),
  Message(
      sender: luke,
      time: '14:05',
      text: 'Can I call you back later? I\'m in a meeting',
      unread: false,
      color: Colors.yellow)
];

List<Message> messages = [
  Message(
    sender: bola,
    time: '18:35',
    text: 'Hey there! What\'s up?',
  ),
  Message(
    sender: currentUser,
    time: '18:36',
    text: 'Nothing. Just Chilling and watching Youtube What about you?',
  ),
  Message(
    sender: bola,
    time: '18:39',
    text:
        'Same here Been watching Youtube for the past 5 hours despite of having so much to do!',
  ),
  Message(
    sender: bola,
    time: '18:39',
    text: 'It\s hard to be productive man',
  ),
  Message(
    sender: currentUser,
    time: '18:42',
    text: 'Yeah, I know. I\m in the same position',
  )
];
