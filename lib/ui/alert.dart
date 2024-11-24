import 'package:flutter/material.dart';

class AlertInFlutter extends StatefulWidget {
  const AlertInFlutter({super.key});

  @override
  State<AlertInFlutter> createState() => _AlertInFlutterState();
}

class _AlertInFlutterState extends State<AlertInFlutter> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text(
            "Show Dialog",
            style: TextStyle(color: Colors.white),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
          ),
          onPressed: () {
            showDialog(
                context: (context),
                builder: (context) {
                  return Container(
                    child: AlertDialog(
                      title: Text('Are you sure ?'),
                      content: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter Folder Name"
                        ),
                      ),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("Yes"),
                        ), TextButton(
                  onPressed: () {
                  Navigator.pop(context);
                  },
                  child: Text("No"))
                      ],
                    ),
                  );
                });
          },
        ),
      ),
    );
  }
}

class SquareRoot extends StatelessWidget {
  const SquareRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child: Center(
        child: RichText(
          text: TextSpan(
            text: 'Hello ', // The base text
            style: TextStyle(fontSize: 20, color: Colors.black), // Default style
            children: <TextSpan>[
              TextSpan(
                  text: 'world',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
              TextSpan(
                  text: ' and ',
                  style: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey)),
              TextSpan(
                  text: 'colorful!',
                  style: TextStyle(color: Colors.red, fontSize: 24)),
            ],
          ),
        ),
      ),
    ),
    );

  }
}