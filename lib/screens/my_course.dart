import 'package:flutter/material.dart';
import 'package:study_room/screens/listoflesson.dart';


class MyCourse extends StatefulWidget {

  static String id = "MyCourse";
  @override
  _MyCourseState createState() => _MyCourseState();
}

class _MyCourseState extends State<MyCourse> {


  var titleList = [
    "Medicine",
    "Business",
    "Network",
    "Medicine",
    "Business",
    "Network",
    "Medicine",
    "Business",
    "Network",
  ];

  // Description List Here
  var descList = [
    "Medicine is the art",
    "Microsoft Power",
    "Computer Network",
    "Medicine is the art",
    "Microsoft Power",
    "Computer Network",
    "Medicine is the art",
    "Microsoft Power",
    "Computer Network",
  ];

  // Image Name List Here
  var imgList = [
    "images/pic1.jpg",
    "images/pic2.jpg",
    "images/pic3.jpg",
    "images/pic1.jpg",
    "images/pic2.jpg",
    "images/pic3.jpg",
    "images/pic1.jpg",
    "images/pic2.jpg",
    "images/pic3.jpg",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('My Courses'),
      ),
      body: ListView.builder(
      itemCount: imgList.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            // This Will Call When User Click On ListView Item

            Navigator.of(context).pushNamed(ListOfLesson.id);
          },
          // Card Which Holds Layout Of ListView Item
          child: Card(
            elevation: 1.0,
            child: Row(
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
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
                        height: 15,
                      ),
                      Container(
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
              ],
            ),
          ),
        );
      },
    ),
    );
  }
}


