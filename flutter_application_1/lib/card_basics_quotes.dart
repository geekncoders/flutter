import 'package:flutter/material.dart';
import 'class/QuoteClass.dart';

void main() => runApp(basicCardApp());

class basicCardApp extends StatefulWidget {
  const basicCardApp({Key? key}) : super(key: key);

  @override
  _basicCardAppState createState() => _basicCardAppState();
}

class _basicCardAppState extends State<basicCardApp> {
  List<Quote> quotes = [
    Quote(text: 'Adnan', author: 'Elder'),
    Quote(text: 'Farhan', author: 'Younger'),
    Quote(text: 'Umair', author: 'Youngest'),
  ];

  Widget cardTemplate(quote){
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: const TextStyle(
                fontSize: 30.0,
                color: Colors.redAccent
              ),
            ),
            Text(
              quote.author,
              style: const TextStyle(
                color: Colors.blueGrey,
                fontSize: 8.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Play with cards'),
          centerTitle: true,
        ),
        body: Column(
          children: quotes.map((quote) => cardTemplate(quote)).toList(),
        ),
      ),
    );
  }
}
