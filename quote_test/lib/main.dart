import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';
void main() => runApp(MaterialApp(
    home: QuoteList()
));

class QuoteList extends StatefulWidget {//cannot change over time
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  int q=0;
  List<Quote> quotes = [
    Quote(author: 'Oscar Wilde', text: 'Be yourself; everyone else is already taken'),
    Quote(author: 'Oscar Wilde', text: 'I have nothing to declare except my genius'),
    Quote(author: 'Oscar Wilde', text: 'The truth is rarely pure and never simple')
  ];
  @override//用這個build function而非 State<QuoteList> 的
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.blue[100],
      ),
      body:Padding(
          padding: EdgeInsets.all(0.0),
          child :
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/blue-sky.jpeg'),
                    //image: AssetImage('assets/background.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child :Column(
                children : <Widget>[
                  SizedBox(height: 10.0),
                  Text('Quotes$q',
                    style: TextStyle(
                      letterSpacing: 10.0,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Container(
                    child :Column(
                      //child: Text('aa'),
                      children: quotes.map((quote) => QuoteCard(quote : quote)).toList(),
                    ),
                  ),
                ]
                ),
              ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              setState(() {
                q+=1;
              });
            },
            child:
                  Icon(Icons.add),
          ),
    );
  }
}