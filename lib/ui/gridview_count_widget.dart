import 'package:flutter/material.dart';

class GridviewWidget extends StatefulWidget {
  const GridviewWidget({super.key});

  @override
  State<GridviewWidget> createState() => _GridviewWidgetState();
}

class _GridviewWidgetState extends State<GridviewWidget> {
  var arrcolors = [
    Colors.green,
    Colors.grey,
    Colors.purple,
    Colors.brown,
    Colors.red,
    Colors.cyan,
    Colors.pink,
    Colors.yellow,
    Colors.black,Colors.blueGrey,
    Colors.blue,Colors.greenAccent,
    Colors.orange,

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
        body: GridView.count(mainAxisSpacing: 12,crossAxisSpacing: 10,
      crossAxisCount: 3,
      children: [
        Container(
          color: arrcolors[0],
        ),Container(
          color: arrcolors[1],
        ),Container(
          color: arrcolors[2],
        ),Container(
          color: arrcolors[3],
        ),Container(
          color: arrcolors[4],
        ),Container(
          color:arrcolors[6] ,
        ),Container(
          color: arrcolors[7],
        ),Container(
          color: arrcolors[8],
        ),Container(
          color: arrcolors[9],
        ),Container(
          color: arrcolors[10],
        ),Container(
          color: arrcolors[11],
        ),
      ],
    ));
  }
}
