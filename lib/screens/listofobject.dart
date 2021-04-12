import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study_room/video_player.dart';



class ListOfObject extends StatefulWidget {

  static String id = "ListOfObject";
  @override
  _ListOfObjectState createState() => _ListOfObjectState();
}

class _ListOfObjectState extends State<ListOfObject> {

  var titleList = [
    "Medicine1",
  ];

  // Description List Here
  var descList = [
    "Medicine is the art",
  ];

  // Image Name List Here
  var imgList = [
    "images/pic1.jpg",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('List Of Object'),
      ),
      body: ListView.builder(
        itemCount: imgList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // This Will Call When User Click On ListView Item
              Navigator.of(context).pushNamed(VideoPlayer.id);
            },
            // Card Which Holds Layout Of ListView Item
            child: Card(
              elevation: 2.5,
              margin: EdgeInsets.all(15.0),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    //imgList[index]
                    child: Image.asset(imgList[index]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          titleList[index],
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          //  width: double.infinity,
                          child: Text(
                            descList[index],
                            maxLines: 3,
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey[500]),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 50.0),
                    child: Icon(Icons.video_library,size: 30.0,color: Colors.red,),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
