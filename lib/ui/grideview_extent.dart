import 'package:flutter/material.dart';

class Gridview_extent_Widget extends StatefulWidget {
  const Gridview_extent_Widget({super.key});

  @override
  State<Gridview_extent_Widget> createState() => _Gridview_extent_WidgetState();
}

class _Gridview_extent_WidgetState extends State<Gridview_extent_Widget> {
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
        body: Column(
          children: [
            Container(height: 300,
              child: GridView.extent(mainAxisSpacing: 12,crossAxisSpacing: 10,

                maxCrossAxisExtent: 100,
                children: [
                  Container(
                    color: arrcolors[0],
                  ),Container(
                    color: arrcolors[1],
                  ),Container(
                    color: arrcolors[2],
                  ),Container(
                    color: arrcolors[3],

                  ),
                ],
              ),
            ),Container(height: 100,child: GridView.extent(mainAxisSpacing: 12,crossAxisSpacing: 10,

              maxCrossAxisExtent: 70,
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
              color: arrcolors[1],
            ),Container(
              color: arrcolors[2],)

              ],
            ),
            )],
        ),
    );
  }
}
