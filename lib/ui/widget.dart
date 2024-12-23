import 'package:flutter/material.dart';

class WidgetLearnPage extends StatelessWidget {
  final List<Map<String, dynamic>> gridItems = [
    {'title': 'Home', 'icon': Icons.home},
    {'title': 'Search', 'icon': Icons.search},
    {'title': 'Settings', 'icon': Icons.settings},
    {'title': 'Profile', 'icon': Icons.person},
    {'title': 'Camera', 'icon': Icons.camera},
    {'title': 'Music', 'icon': Icons.music_note},
    {'title': 'Chat', 'icon': Icons.chat},
    {'title': 'Alarm', 'icon': Icons.alarm},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black,
        title: const Text('Widget Learn Page',style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
            childAspectRatio: 1.0,
          ),

          itemCount: gridItems.length,
          itemBuilder: (context, index) {
            final item = gridItems[index];
            return GestureDetector(
              onTap: () {
                // Action on tap
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('${item['title']} clicked!')),
                );
              },
              child: Card(
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(item['icon'], size: 40.0, color: Colors.black),
                    const SizedBox(height: 8.0),
                    Text(
                      item['title'],
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: WidgetLearnPage(),
  ));
}
