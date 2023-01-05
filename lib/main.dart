import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      "questionText": 'What\'s your favorite color?',
      "answers": ["Black", "Red", "Green", "White"]
    },
    {
      "questionText": 'What\'s your favorite animal?',
      "answers": ["Rabbit", "Snake", "Elephant", "Lion"]
    },
    {
      "questionText": 'Who\'s your favorite instructor?',
      "answers": ["Malek", "Malex", "Malik", "Max"]
    },
  ];
  // initalizing a variable
  var _questionIndex = 0;
  // Function
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    if (_questionIndex < questions.length) {
      print("We have more questions!");
    }

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = ["hello"];
    // dummy.add("Max");
    // print(dummy);
    // dummy = [];
    // questions = []; does not work if questions is a const

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: _questionIndex < questions.length
            ? Column(children: [
                Question(questions[_questionIndex]["questionText"]),
                ...(questions[_questionIndex]["answers"] as List<String>)
                    .map((answer) {
                  return Answer(_answerQuestion, answer);
                }).toList()
                // ElevatedButton(onPressed: null, child: Text("Answer 1")),
                // ElevatedButton(onPressed: null, child: Text("Answer 2")),
                // ElevatedButton(onPressed: null, child: Text("Answer 3")),
                // RaisedButton(child: Text("Answer 1"), onPressed: _answerQuestion),
                // RaisedButton(
                //     child: Text("Answer 2"),
                //     onPressed: () => print("Answer 2 chosen!")),
                // RaisedButton(
                //     child: Text("Answer 3"),
                //     onPressed: () {
                //       // some code...
                //       print("Answer 3 chosen!");
                //     }),
              ])
            : Center(child: Text("You did it!")),
      ),
    );
  }
}
