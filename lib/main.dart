import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exigo',
      theme:ThemeData(
        primarySwatch:Colors.lightBlue,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
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
                    child: Text('Hello',
                        style: GoogleFonts.montserrat(
                            fontSize: 80.0, fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(16.0, 175.0, 0.0, 0.0),
                    child: Text('There',
                        style: GoogleFonts.montserrat(
                            fontSize: 80.0, fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(300.0, 175.0, 0.0, 0.0),
                    child: Text('.',
                        style: GoogleFonts.montserrat(
                            fontSize: 80.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.green)),
                  )
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'EMAIL',
                          labelStyle: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green))),
                    ),
                    SizedBox(height: 20.0),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'PASSWORD',
                          labelStyle: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green))),
                      obscureText: true,
                    ),
                    SizedBox(height:20.0),
                    Container(
                      alignment: Alignment(1.0,0.0),
                      padding: EdgeInsets.only(
                        top:15.0,left:20.0
                      ),
                      child: InkWell(
                        child:Text('Forgot Passwrod',
                        style:GoogleFonts.montserrat(
                          color:Colors.green,
                          fontWeight:FontWeight.bold,
                          decoration:TextDecoration.underline
                        )),
                      ),
                    ),
                    SizedBox(height:40),
                    Container(
                      height:40.0,
                      child:Material(
                        borderRadius:BorderRadius.circular(20.0),
                        shadowColor:Colors.greenAccent,
                        color:Colors.green,
                        elevation:7.0,
                        child:GestureDetector(
                          onTap:() {},
                            child:Center(
                              child:Text(
                                'Login',
                                style: GoogleFonts.montserrat(
                                  color:Colors.white,
                                  fontWeight:FontWeight.bold,
                                ),
                              ),
                            ),
                        )
                      ),
                    ),
                    SizedBox(height:40.0),
                    Row( 
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                           'New ?',
                           style: GoogleFonts.montserrat()
                        ),
                        SizedBox(height:5.0),
                        InkWell(
                          onTap: (){},
                          child: Text('Register',
                          style:GoogleFonts.montserrat(
                            color:Colors.green,
                            fontWeight:FontWeight.bold,
                            decoration:TextDecoration.underline
                          )),
                        )
                      ],
                    )
                     ]
                  ),
                )
              ]
            )
    );
  }
}