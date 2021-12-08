import 'package:flutter/material.dart';
import 'class/QuoteClass.dart';

void main() => runApp(extractedWidgetApp());

class extractedWidgetApp extends StatefulWidget {
  const extractedWidgetApp({Key? key}) : super(key: key);

  @override
  _extractedWidgetAppState createState() => _extractedWidgetAppState();
}

class _extractedWidgetAppState extends State<extractedWidgetApp> {
  List<Quote> quotes = [
    Quote(text: 'Adnan', author: 'Eldest'),
    Quote(text: 'Farhan', author: 'Younger'),
    Quote(text: 'Umair', author: 'Youngest'),
  ];

  Widget cardTemplate(quote) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            quote.text,
            style: const TextStyle(color: Colors.redAccent, fontSize: 30.0),
          ),
          Text(
            quote.author,
            style: const TextStyle(color: Colors.green),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Extracted Widget'),
          centerTitle: true,
        ),
        body: Column(
          children: quotes.map((quote) => cardTemplate(quote)).toList(),
        ),
      ),
    );
  }
}
