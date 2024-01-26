import 'dart:io';
import 'entities/chat.dart';
void main() async {
  print('Enter the name for User 1:');
  String name1 = stdin.readLineSync()!;
  print('Enter the name for User 2:');
  String name2 = stdin.readLineSync()!;

  Chat chat = Chat(name1: name1, name2: name2);
  await chat.startChat();
}