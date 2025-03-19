import 'package:flutter/material.dart';

class Home extends StatefulWidget 
{
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> 
{
  late List<String> board;
  late String currentPlayer;
  late String winner;
  late bool isDraw;

  @override
  void initState()
  {
    super.initState();
    _initializeGame();
  }

  void _initializeGame()
  {
    board = List.generate(9, (_) => "");
    currentPlayer = "X";
    winner = "";
    isDraw = false;
  }

  void _handleTap(int index)
  {
    if (board[index] != "" || winner != "") return;

    setState(
    {
      board[index] = currentPlayer;
      if (_checkWinner(currentPlayer))
      {
        winner = currentPlayer;
      }
      else if (!_checkDraw())
      {
        isDraw = true;
      }
      else
      {
        currentPlayer = currentPlayer == "X" ? "O" : "X";
      }
    }
    );
  }

  bool _checkWinner(String players)
  {
    for  
  }
}
