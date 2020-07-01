import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';


void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  
  List<Quote> quotes = [
    Quote( author: 'Nikola Tesla', text: 'Energy, vibration and Frequency'),
    Quote( author: 'Wright Brothers', text: 'I have nothing to declare except my genius'),
    Quote( author: 'Albert Einstein', text: 'The truth is rarely pure and never simple')
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Awesome Quotes'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
            children: quotes.map((quote) => QuoteCard(
              quotes: quote,
              delete: () {
                setState(() {
                  quotes.remove(quote);
                });
              }
              )).toList(),
        ),
      ),
    );
  }
}

