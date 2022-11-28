import 'package:flutter/material.dart';
import 'dart:async';

import 'package:pebble_life/get_started.dart';

class ExtendedSplash extends StatefulWidget {
  const ExtendedSplash({Key? key}) : super(key: key);

  @override
  State<ExtendedSplash> createState() => _ExtendedSplashState();
}

class _ExtendedSplashState extends State<ExtendedSplash> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 8),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => Home()
            )
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:  EdgeInsets.fromLTRB(0, 0, 0, 20),
        width:  double.infinity,
        decoration:  BoxDecoration (
          color:  Color(0xffede8f6),
        ),
        child:
        Column(
          crossAxisAlignment:  CrossAxisAlignment.center,
          children:  [
            Container(
              margin:  EdgeInsets.fromLTRB(0, 0, 0, 17),
              width:  double.infinity,
              height:  723,
              child:
              Center(
                child:
                Image( image: AssetImage('assets/images/splash2.png'),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              //logo
              margin:  EdgeInsets.fromLTRB(32, 0, 33, 0),
              width:  double.infinity,
              child:
              Column(
                crossAxisAlignment:  CrossAxisAlignment.center,
                children:  [
                  Container(
                    margin:  EdgeInsets.fromLTRB(0, 0, 4.41, 22.28),
                    width:  88.25,
                    height:  98.72,
                    child:
                    Image.asset('assets/images/pebblelogo.png',
                    ),
                  ),
                  Container(
                    width:  310,
                    height:  59,
                    child:
                    Image.asset('assets/images/text_logo.png',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
