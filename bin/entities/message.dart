class Message {
  final String senderName;
  final String text;
  
  static List<String> partingWords = [
  'Goodbye',
  'Farewell',
  'See you later',
  'Take care',
  'Until next time',
  'Adieu',
  'Cheerio',
  'Bye for now',
  'Ciao',
  'So long',
  'Till we meet again',
  'Catch you later',
  'Have a great day',
  'Signing off',
  'Bye-bye',
  'Later',
  'Goodnight',
  'Peace out',
  'Stay safe',
  'Adios'
];

  Message({required this.senderName, required this.text});
}