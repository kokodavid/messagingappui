import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: new MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                  child: Text('Hello',style: TextStyle(fontSize: 80.0 , fontWeight: FontWeight.bold),),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 175.0, 0.0, 0.0),
                  child: Text('There',style: TextStyle(fontSize: 80.0 , fontWeight: FontWeight.bold),),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(220.0, 175.0, 0.0, 0.0),
                  child: Text('.',style: TextStyle(fontSize: 80.0 , fontWeight: FontWeight.bold,color: Colors.green),),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 35,left: 20,right: 20),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    labelText: 'EMAIL',
                    labelStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)
                    )
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'PASSWORD',
                      labelStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)
                      )
                  ),
                  obscureText: true,
                ),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  alignment: Alignment(1.0,0.0),
                  padding: EdgeInsets.only(top: 15.0,left: 50.0),
                  child: InkWell(
                    child: Text('Forgot Password',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                      decoration: TextDecoration.underline
                    ),),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}


