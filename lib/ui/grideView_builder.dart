import 'package:flutter/material.dart';

class AlertWidget extends StatefulWidget {
  const AlertWidget({super.key});

  @override
  State<AlertWidget> createState() => _AlertWidgetState();
}

List items = [
  'https://th.bing.com/th/id/OIG.uXBrjdtWIWgkqQ1RHIhD?pid=ImgDetMain',
  'https://th.bing.com/th/id/OIG.uXBrjdtWIWgkqQ1RHIhD?pid=ImgDetMain',
  'https://th.bing.com/th/id/OIG.uXBrjdtWIWgkqQ1RHIhD?pid=ImgDetMain',

  'https://th.bing.com/th/id/OIG.uXBrjdtWIWgkqQ1RHIhD?pid=ImgDetMain',

  'https://th.bing.com/th/id/OIG.uXBrjdtWIWgkqQ1RHIhD?pid=ImgDetMain',
  'https://th.bing.com/th/id/OIG.uXBrjdtWIWgkqQ1RHIhD?pid=ImgDetMain',
  'https://th.bing.com/th/id/OIG.uXBrjdtWIWgkqQ1RHIhD?pid=ImgDetMain',
  'https://th.bing.com/th/id/OIG.uXBrjdtWIWgkqQ1RHIhD?pid=ImgDetMain',

  'https://th.bing.com/th/id/OIG.uXBrjdtWIWgkqQ1RHIhD?pid=ImgDetMain',

  'https://th.bing.com/th/id/OIG.uXBrjdtWIWgkqQ1RHIhD?pid=ImgDetMain',

];

class _AlertWidgetState extends State<AlertWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.lightGreen,
      appBar: AppBar(backgroundColor:Colors.green ,),
      body: GridView.builder(padding: EdgeInsets.all(10),
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10,mainAxisSpacing: 10),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Image.network(items[index],height: 100,width: 100,fit: BoxFit.fill,);
        },
      ),
    );
  }
}
