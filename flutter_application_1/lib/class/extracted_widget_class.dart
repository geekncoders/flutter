import 'package:flutter/material.dart';
import 'QuoteClass.dart';
import 'class/extractedWidgetClass.dart';

class cardExtractedWidger extends StatelessWidget {
  final Quote quote;
  const cardExtractedWidger({required this.quote});


  @override
  Widget build(BuildContext context) {
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
}