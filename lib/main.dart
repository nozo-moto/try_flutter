// import 'package:flutter/material.dart';
// import 'package:transparent_image/transparent_image.dart';
// import 'package:english_words/english_words.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // return MaterialApp(
//     //   title: 'Satatup Name Generator',
//     //   theme: new ThemeData(
//     //     primaryColor: Colors.white,
//     //   ),
//     //   home: new RamdomWords(),
//     // );

//     var title = 'Web Images';
//     return MaterialApp(
//       title: title,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(title),
//         ),
//         body: Stack(
//           children: <Widget>[
//             Center(child: CircularProgressIndicator()),
//             Center(
//               child: FadeInImage.memoryNetwork(
//                 placeholder: kTransparentImage,
//                 image: 'https://github.com/flutter/website/blob/master/src/_includes/code/layout/lakes/images/lake.jpg?raw=true',
//               ),
//             )
//           ]
//           // Image.network(
//           //   
//           // ),
//         ),
//       ),
//     );
//   }
// }

// class RandomWordsState extends State<RamdomWords> {
//   final _suggestion = <WordPair>[];
//   final Set<WordPair> _saved = new Set<WordPair>();
//   final _biggerFont = const TextStyle(fontSize: 18.0);
//   @override
//   Widget build (BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Startup Name generator'),
//         actions: <Widget>[
//           new IconButton(
//             icon: const Icon(Icons.list),
//             onPressed: _pushSaved,
//           )
//         ],
//       ),
//       body: _buildSuggestions(),
//     );
//   }

//   Widget _buildSuggestions() {
//     return ListView.builder(
//       padding: const EdgeInsets.all(16.0),
//       itemBuilder: (context, i) {
//         if (i.isOdd) return Divider();

//         final index = i ~/ 2;
//         if (index >= _suggestion.length) {
//           _suggestion.addAll(generateWordPairs().take(10));
//         }
//         return _buildRow(_suggestion[index]);
//       },
//     );
//   }

//   Widget _buildRow(WordPair pair) {
//     final bool alreadySaved = _saved.contains(pair);
//     return ListTile (
//       title: Text(
//         pair.asPascalCase,
//         style: _biggerFont,
//       ),
//       trailing: new Icon(
//         alreadySaved ? Icons.favorite : Icons.favorite_border,
//         color: alreadySaved ? Colors.red : null,
//       ),
//       onTap: () {
//         setState(() {
//           if (alreadySaved) {
//             _saved.remove(pair);
//           } else {
//             _saved.add(pair);
//           }
//         });
//       },
//     );
//   }

//   void _pushSaved() {
//     Navigator.of(context).push(
//       new MaterialPageRoute<void>(
//         builder: (BuildContext context) {
//           final Iterable<ListTile> tiles = _saved.map(
//             (WordPair pair) {
//               return new ListTile(
//                 title: new Text(
//                   pair.asPascalCase,
//                   style: _biggerFont,
//                 ),
//               );
//             },
//           );
//           final List<Widget> divided = ListTile
//           .divideTiles(
//             context: context,
//             tiles: tiles,
//           ).toList();

//           return new Scaffold(
//             appBar: new AppBar(
//               title: const Text('saved suggestion'),
//             ),
//             body: new ListView(children: divided),
//           );
//         },
//       )
//     );
//   }
// }

// class RamdomWords extends StatefulWidget {
//   @override
//   RandomWordsState createState() => new RandomWordsState();
// }

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Fade in images';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: FadeInImage.assetNetwork(
            placeholder: 'assets/loading.gif',
            image: 'https://github.com/flutter/website/blob/master/src/_includes/code/layout/lakes/images/lake.jpg?raw=true',
          ),
        )
      )
    );
  }
}