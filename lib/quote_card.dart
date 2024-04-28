import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tutorial_cont/quote.dart';

class QuoteCard extends StatelessWidget {
  late final Quote quote;
  //late final VoidCallback delete;
  late final Function() delete;

  QuoteCard({ required this.quote, required this.delete });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(quote.text,
              style: TextStyle(
                  fontSize: 18,
                  color:  Colors.grey[600]),
            ),
            const SizedBox(height: 6,),
            Text(quote.author,
              style: TextStyle(
                  fontSize: 14,
                  color:  Colors.grey[800]),
            ),
            const SizedBox(height: 8,),
            TextButton.icon(
                onPressed: delete,
                icon: const Icon(Icons.delete),
                label: const Text('delete quote')
            ),
          ],
        ),
      ),
    );
  }
}

