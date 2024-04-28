import 'package:flutter/material.dart';
import 'package:flutter_tutorial_cont/quote.dart';
import 'package:flutter_tutorial_cont/quote_card.dart';

void main() {
  runApp(const MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote('shinra tensei', 'pain'),
    Quote('DATEBAYO', 'naruto'),
    Quote('CEASEEER', 'joseph')
  ];

  // Widget quoteTemplate(quote){
  //   return QuoteCard(quote: quote);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
            delete: () {
              setState(() {
                quotes.remove(quote);
              });
            }
        )).toList(),
        // children: quotes.map((quote) => quoteTemplate(quote)).toList(),
        // children: quotes.map((quote) => Text('${quote.text} - ${quote.author}')).toList(),
        // children: quotes.map((quote) {
        //   return Text(quote);
        // }).toList(),
        //or
        //children: quotes.map((quote) => Text(quote)).toList()
      ),
    );
  }
}

