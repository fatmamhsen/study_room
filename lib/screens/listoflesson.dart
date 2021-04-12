import 'package:flutter/material.dart';

import 'listofobject.dart';


class ListOfLesson extends StatefulWidget {
  static String id = "ListOfLesson";

  @override
  _ListOfLessonState createState() => _ListOfLessonState();
}

class _ListOfLessonState extends State<ListOfLesson> {


  var titleList = [
    "Medicine1",
    "Medicine2",
    "Medicine3",
  ];

  // Description List Here
  var descList = [
    "Medicine is the art",
    "Medicine is the art",
    "Medicine is the art",
  ];

  // Image Name List Here
  var imgList = [
    "images/pic1.jpg",
    "images/pic1.jpg",
    "images/pic1.jpg",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('List Of Lessons'),
      ),
      body: ListView.builder(
        itemCount: imgList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // This Will Call When User Click On ListView Item
              Navigator.of(context).pushNamed(ListOfObject.id);
            },
            // Card Which Holds Layout Of ListView Item
            child: Card(
              elevation: 1.0,
              child: Row(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    //imgList[index]
                    child: Image.asset(imgList[index]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
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
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}


