import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // Function
  void answerQuestion() {
    print("Answer chosen!");
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(children: [
          Text('The questions!'),
          // ElevatedButton(onPressed: null, child: Text("Answer 1")),
          // ElevatedButton(onPressed: null, child: Text("Answer 2")),
          // ElevatedButton(onPressed: null, child: Text("Answer 3")),
          RaisedButton(child: Text("Answer 1"), onPressed: answerQuestion),
          RaisedButton(
              child: Text("Answer 2"),
              onPressed: () => print("Answer 2 chosen!")),
          RaisedButton(
              child: Text("Answer 3"),
              onPressed: () {
                // some code...
                print("Answer 3 chosen!");
              }),
        ]),
      ),
    );
  }
}
