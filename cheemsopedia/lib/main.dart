import 'package:cheemsopedia/answer.dart';
import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _qi = 0;

  _ansq() {
    setState(() {
      _qi = _qi + 1;
    });
  }

  Widget build(BuildContext context) {
    var questions = [{
      'questionText': 'How you doin??',
      'answers': ['ross', 'chandler', 'gunther', 'rachel'],
    },
      {
        'questionText': 'I know',
        'answers': ['ross', 'chandler', 'gunther', 'rachel'],
      },
      {
        'questionText':
        'Am not great at the advice can I give you a sarcastic comment',
        'answers': ['ross', 'chandler', 'gunther', 'rachel'],
      },
      {
        'questionText': 'Pivot!!',
        'answers': ['ross', 'chandler', 'gunther', 'rachel'],
      },
      {
        'questionText': 'okay No uterus No Opinion',
        'answers': ['ross', 'chandler', 'gunther', 'rachel'],
      },
      {
        'questionText': 'Who is the wife of Ross',
        'answers': ['ross', 'chandler', 'gunther', 'rachel'],
      },

    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('F.R.I.E.N.D.S'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Question(
            questions[_qi]['questionText'].toString(),
          ),
          ...(questions[_qi]['answers'] as List<String>).map((answer)
          {
            return Answers(_qi,answer);
          }).toList()

        ],
      ),
    ));
  }
}
