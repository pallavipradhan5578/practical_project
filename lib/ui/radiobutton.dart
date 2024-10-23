import 'package:flutter/material.dart';

class Radiobutton extends StatefulWidget {
  const Radiobutton({super.key});

  @override
  State<Radiobutton> createState() => _RadiobuttonState();
}

class _RadiobuttonState extends State<Radiobutton> {
  String level = 'Beginners';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Radio buttons ?",
                style: TextStyle(fontSize: 36),
              ),
            ),
            SizedBox(
              height: 20,
            ),Text("Choose gender",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                Center(
                  child: Radio(
                    activeColor: Colors.green,
                    value: "Beginners",
                    groupValue: level,
                    onChanged: (valve) {
                      setState(() {
                        level = valve.toString();
                      });
                    },
                  ),
                ),
                Text("Male",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,)),Radio(
                activeColor: Colors.green,
                value: "Advanced",
                groupValue: level,
                onChanged: (valve) {
                setState(() {
                level = valve.toString();
                });
                },
                ),Text("Female",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400)



                )]
            ),
          ],
        ),
      ),
    );
  }
}
