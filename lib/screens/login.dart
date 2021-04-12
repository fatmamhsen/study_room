import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'my_course.dart';

class Login extends StatefulWidget {
  static String id = "Login";

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth:  MediaQuery.of(context).size.width,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue[800],Colors.blue[600]],
              begin: Alignment.topLeft,
              end: Alignment.topRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 36.0, horizontal: 24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 46.0,
                        fontWeight: FontWeight.w800,
                      ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text('Welcom To Study Room',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(24.0) ,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       TextField(
                         decoration: InputDecoration(
                           border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(8.0),
                             borderSide: BorderSide.none
                           ),
                           filled: true,
                           fillColor: Color(0xffe7edeb),
                           hintText: 'E-mail',
                           prefixIcon: Icon(Icons.email,
                           color: Colors.grey[600],
                           ),
                         ),
                         keyboardType: TextInputType.emailAddress,
                       ),
                        SizedBox(
                          height: 40.0,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide.none
                            ),
                            filled: true,
                            fillColor: Color(0xffe7edeb),
                            hintText: 'Password',
                            prefixIcon: Icon(Icons.lock,
                              color: Colors.grey[600],
                            ),
                          ),
                          obscureText: true,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('Forget your password?',
                            style: TextStyle(
                              color: Colors.blue[800],
                              decoration: TextDecoration.underline,
                            ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50.0,
                        ),
                        Container(
                          width: double.infinity,
                          child: RaisedButton(
                            onPressed: (){
                              Navigator.of(context).pushNamed(MyCourse.id);
                            },
                            color: Colors.blue[800],
                            padding: EdgeInsets.symmetric(vertical: 16.0),
                            child: Text('Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


