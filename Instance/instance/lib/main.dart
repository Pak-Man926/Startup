import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatefulWidget
{
  @override
  _MyAppState createState()
  {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>
{
  var _questionIndex = 0;

  var _questions =[
    "What color do you like the most?",
    "What\'s your favourite weather?"
  ];

  var _answers =[
    ["Red","Green","Blue"],
    ["Sunny","Rainy","Calm"]
  ];

  void _answerQuestions(String answer)
  {
    setState(()
    {
      if (_questionIndex < 2)
      {
        _questionIndex += _questionIndex; 
      }
    });
  }

  @override
  Widget build(BuildContext context)
  {
    if (_questionIndex < 2)
    {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text("Personality Test")),
          body: Column(
            children: [
              Text(_questions[_questionIndex]),
              ElevatedButton(
                onPressed: () => _answerQuestions(_answers[_questionIndex][0]),
                 child: Text(_answers[_questionIndex][0])
                 ),
              ElevatedButton(
                onPressed: () => _answerQuestions(_answers[_questionIndex][1]),
                 child: Text(_answers[_questionIndex][1])
                 ),
            ],
          ),
        ),
      );
    }
    else
    {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text("Liar Test")),
          body: Column(
            children: [
              Text("We don't know anything about you, but the app looks great!!"),
            ],
          ),
        )
      );
    }
  }
}