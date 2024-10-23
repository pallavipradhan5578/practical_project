import 'package:flutter/material.dart';
import 'package:practical_project/services/web_services.dart';
import 'package:practical_project/utils/api_url.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isloading = true;
  List posts=[];
  @override
  void initState() {
    _fetchedData();
    // TODO: implement initState
    super.initState();
  }


  void _fetchedData()async{
    var data=await WebServices.getMethod(routeUrl: ApiUrls.getPosts);
    if(data!=null){
      posts=data;
      setState(() {
        isloading=false;  
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fetching data"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child:
              isloading==true ? CircularProgressIndicator() : 
              ListView.builder(
                itemCount: posts.length,
                itemBuilder: (coontext,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    
                    width: MediaQuery.of(context).size.width/1,
                   
                   decoration: BoxDecoration(
                    border: Border.all(width: 1,color: Colors.black)
                   ),
                    child: Column(
                      children: [
                        Text(posts[index]['title'],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700
                        ),
                        ),
                        SizedBox(height: 10,),
                          Text(posts[index]['body'],
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400
                        ),
                        )
                      ],
                    ),
                  ),
                );
              })
              
              ),
    );
  }
}
