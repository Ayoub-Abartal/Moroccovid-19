import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(75.0),
                    bottomRight: Radius.circular(75.0),
                  ),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.greenAccent, Colors.green[700]]),
                ),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 180.0,
                      ),
                      Flexible(
                        flex: 2,
                        child: Text(
                          '  مرحبا بكم في تطبيق ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text('Moroccovid-19',
                          style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 1.5,
                            fontSize: 24.0,
                          ))
                    ],
                  ),
                ),
              ),
            ),
            //Image.asset('assets/drr.gif'),
            Expanded(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    // CODE THAT CONTROL THE SIZE OF THE BUTTON
                    /*AspectRatio(
                      aspectRatio: 1.20,
                      child:*/
                    Flexible(
                      flex: 2,
                      child: Center(
                        child: ButtonTheme(
                          minWidth: 200.0,
                          height: 40.0,
                          child: RaisedButton(
                            // CODE THAT CONTROL THE RADIUS OF THE BUTTON
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.green[600])),
                            color: Colors.green[600],
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, '/loading');
                            },
                            child: Text(
                              "دخول",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
