import 'dart:async';
import 'dart:io';
import 'message.dart';
import 'user.dart';

class Chat {
  late final User user1;
  late final User user2;

  Chat({required String name1, required String name2}) {
    user1 = User(name: name1);
    user2 = User(name: name2);
  }

  Future<void> startChat() async {
    print('Chat started between ${user1.name} and ${user2.name}.\n');

    while (true) {
      await _sendMessage(user1, user2);

      if (_isPartingWords(user1.messagesSent.last.text)) {
        print('${user1.name} has left the chat.');
        break;
      }

      await _sendMessage(user2, user1);

      if (_isPartingWords(user2.messagesSent.last.text)) {
        print('${user2.name} has left the chat.');
        break;
      }
    }
  }

  Future<void> _sendMessage(User sender, User receiver) async {
    stdout.write('${sender.name}: ');
    String message = stdin.readLineSync()!;

    sender.messagesSent.add(Message(senderName: sender.name, text: message));

    print('Sending message...');
    await Future.delayed(Duration(seconds: 2));

    print('\n${receiver.name} received message: $message\n');
  }

  bool _isPartingWords(String message) {
    return Message.partingWords.contains(message.toLowerCase());
  }
}