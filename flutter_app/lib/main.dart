import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp(
  {
    super.key
  }
      );

  @override
  Widget build(BuildContext context)
  {
    return ChangeNotifierProvider(
        create: (context) => MyAppState(),
        child: MaterialApp(
          title: 'Namer App',
          theme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          ),
          home: MyHomePage(),
        ),
    );
  }
}

class MyAppState extends ChangeNotifier
{
  var Current = WordPair.random();
  var favorites =<WordPair>[];

  void toogleFavorite()
  {
    if(favorites.contains(Current))
      {
        favorites.remove(Current);
      }
    else
      {
        favorites.add(Current);
      }
    notifyListeners();
  }

  void getNext()
  {
    Current = WordPair.random();

    notifyListeners();
  }
}

class MyHomePage extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    var appState = context.watch<MyAppState>();
    var pair = appState.Current;

    IconData icon;
    if(appState.favorites.contains(pair))
    {
      icon = Icons.favorite;
    }
    else
      {
        icon = Icons.favorite_rounded;
      }

    return Scaffold(
      body: Center(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Text('A Random AWESOME idea:'),
          BigCard(pair: pair),
          SizedBox(height: 10),
         Row(
           mainAxisSize: MainAxisSize.min,
           children:[
             ElevatedButton.icon(
               onPressed: ()
               {
                 appState.toogleFavorite();
               }, 
               icon: Icon(icon),
               label: Text('Like'),
             ),
             SizedBox(width: 10,),
             ElevatedButton(
               onPressed: ()
               {
                 appState.getNext();
               },
               child: Text('Next'),
             ),
           ]
         )
        ],
      ),
      ),
    );
  }
}

class BigCard extends StatelessWidget {
  const BigCard
      ({
    super.key,
    required this.pair,
  });

  final WordPair pair;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final style = theme.textTheme.displayMedium!.copyWith
      (

      color: theme.colorScheme.onSecondary,
    );

    return Card(
      color: theme.colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          pair.asLowerCase,
          style: style,
          semanticsLabel: "${pair.first} ${pair.second}",
        ),
      ),
    );
  }
}