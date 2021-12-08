import 'package:flutter/material.dart';
import 'class/QuoteClass.dart';

void main() => runApp(customClassApp());

class customClassApp extends StatefulWidget {
  const customClassApp({Key? key}) : super(key: key);

  @override
  _customClassAppState createState() => _customClassAppState();
}

class _customClassAppState extends State<customClassApp> {
  @override
  List<Quote> quotes = [
    Quote(text: 'Adnan', author: 'Eldest'),
    Quote(text: 'Farhan', author: 'Younger'),
    Quote(text: 'Umair', author: 'Youngest')
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Custom Class'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          children: quotes.map((quote) => Text('${quote.text} - ${quote.author}')).toList(),
        ),
      ),
    );
  }
}
