import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // List<String> quotes = [
  //   "Be yourself; everyone else is already taken.",
  //   "A room without books is like a body without a soul.",
  //   "You only live once, but if you do it right, once is enough.",
  //   "Be the change that you wish to see in the world.",
  // ];
  List<Quote> quotes = [
    Quote(
        text: "Be yourself; everyone else is already taken.", author: "Robin "),
    Quote(
        text: "A room without books is like a body without a soul.",
        author: "Hood"),
    Quote(
        text: "You only live once, but if you do it right, once is enough.",
        author: "Rolex"),
    Quote(
        text: "Be the change that you wish to see in the world.",
        author: "Alex"),
  ];

  Widget quoteTemplate(quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              alignment: AlignmentDirectional.topStart,
              child: Icon(
                Icons.format_quote,
                color: Colors.grey,
              ),
            ),
            Text(
              quote.text,
              style: TextStyle(fontSize: 17, color: Colors.grey[700]),
            ),
            SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.grey[800]),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
          "Awesome Quotes",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: Column(
        // quotes.map((quote) => Text(quote)).toList()
        // quotes.map((quote) => Text('${quote.text} - ${quote.author}'))
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),

      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      //     BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      //   ],
      //   selectedItemColor: Colors.redAccent,
      //   elevation: 0.0,
      //   backgroundColor: Colors.grey[100],
      // ),
    );
  }
}
