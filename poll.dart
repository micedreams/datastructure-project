//this is part flutter project (stick this into main file to see the magic ^-^)
  
  import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List questions = [
    {
      "index": "0",
      "question": "A",
      "answers": ["A", "B", "C", "D", "E"]
    },
    {
      "index": "1",
      "question": "B",
      "answers": ["A", "B", "C", "D", "E"]
    },
    {
      "index": "2",
      "question": "C",
      "answers": ["A", "B", "C", "D", "E"]
    },
    {
      "index": "3",
      "question": "D",
      "answers": ["A", "B", "C", "D", "E"]
    },
    {
      "index": "4",
      "question": "E",
      "answers": ["A", "B", "C", "D", "E"]
    },
  ];
  Map solved = {};
  List solvedQIndex = [0];

  void add(String value, int index) {
    setState(() {
      solved[index] = value;
      solvedQIndex.add(index + 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text("Poll")),
          body: Column(
            children: questions.map(
              (q) {
                List options = q["answers"];
                return solvedQIndex.contains(int.parse(q["index"]))
                    ? Container(
                        child: Row(
                          children: <Widget>[
                            Text("${q["question"]}:"),
                            Wrap(
                              children: options
                                  .map((a) => ElevatedButton(
                                      onPressed: () {
                                        add(a, int.parse(q["index"]));
                                      },
                                      child: Text(a)))
                                  .toList(),
                            )
                          ],
                        ),
                      )
                    : SizedBox.shrink();
              },
            ).toList(),
          )),
    );
  }
}
