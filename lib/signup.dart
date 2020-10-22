import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messagingappui/widgets/EmailTextForm.dart';
import 'package:messagingappui/widgets/NickNameTextForm.dart';
import 'package:messagingappui/widgets/PasswordTextForm.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                  padding: EdgeInsets.fromLTRB(15.0, 115, 0.0, 0.0),
                  child: Text('Register',style: TextStyle(fontSize: 55.0 , fontWeight: FontWeight.bold),),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(220.0, 100.0, 0.0, 0.0),
                  child: Text('.',style: TextStyle(fontSize: 70.0 , fontWeight: FontWeight.bold,color: Colors.green),),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 35,left: 20,right: 20),
            child: Column(
              children: <Widget>[
                NickNameTextForm(),
                SizedBox(
                  height: 12.0,
                ),
                EmailTextForm(),
                SizedBox(
                  height: 5.0,
                ),
                PasswordTextForm(),
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
                ),
                SizedBox(
                  height: 40.0,),
                Container(
                  height: 50.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.greenAccent,
                    color: Colors.green,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: (){},
                      child: Center(
                        child: Text(
                          'SUBMIT',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 50.0,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            style: BorderStyle.solid
                        ),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child:
                      Center(
                        child: Text('Go Back',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat')),
                      ),
                    ),

                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
