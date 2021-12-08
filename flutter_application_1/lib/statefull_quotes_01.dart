import 'package:flutter/material.dart';

void main() => runApp(QuoteApp());

class QuoteApp extends StatefulWidget {
  // const QuoteApp({ Key? key }) : super(key: key);

  @override
  _QuoteAppState createState() => _QuoteAppState();
}

class _QuoteAppState extends   State<QuoteApp> {
  List<String> Quotes = ['Adnan', 'Farhan', 'Umair'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text('QuoteApp'),
          backgroundColor: Colors.red[200],
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: 
          Quotes.map((quote) => Text(quote,
          style: const TextStyle(
            backgroundColor: Colors.redAccent,
          ),)).toList(),
        ),
      ),
    );
  }
}
