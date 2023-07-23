import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const FunnyQuotesApp());
}

class FunnyQuotesApp extends StatelessWidget {
  const FunnyQuotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Funny Quotes',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const List<String> _quoteList = [
    'วันนี้ไม่เห็นค่า วันหน้าก็ได้ เราว่างทุกวันแหละ',
    'อย่าทำวันนี้ให้ดีที่สุด เดี๋ยวพรุ่งนี้ไม่มีอะไรทำ',
    'เคยเป็นแล้วคนดี ตอนนี้เป็นคนโสด',
    'จะไม่มีคำว่าสาย ถ้าเราตื่นบ่าย',
    'รอคนไม่มีหัวใจ ก็เหมือนรอประชาธิปไตยจากรัฐบาล',
  ];
  static const List conlist<Mater>_colorlist =[
    Colors.red,Colors.pink,
  ];

  var _quote = _quoteList[0];
  var _color = _colorList[0];// state variable

  void _handleClickGo() {
    var rand = Random();

    String newQuote;
    do {
      var randomIndex = rand.nextInt(_quoteList.length);
      newQuote = _quoteList[randomIndex];
    }while(newQuote != _quote) ;

    Material
    }

    }


    setState(() {
      _quote =newQuote;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('คำคมกวนๆ')),
      floatingActionButton: FloatingActionButton(
        onPressed: _handleClickGo,
        child: const Center(
          child: Text(
            'Next Quote',
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Text(
            _quote, // positional parameter/argument
            // named parameter/argument
            style: TextStyle(
              color: _color,
              fontSize: 54,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}