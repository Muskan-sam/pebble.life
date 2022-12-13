import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:pebble_life/Registeration.dart';
import 'package:pebble_life/login.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin:  EdgeInsets.fromLTRB(0, 62, 0, 25),
              width:  65.25,
              height:  73,
              child:
              Image.asset('assets/images/pebblelogo.png',
              ),
            ),
            Container(
              width:  250,
              height:  364,
              margin: EdgeInsets.fromLTRB(0, 25, 0, 25),
              child:
              Image.asset('assets/images/getstarted.png',
              ),
            ),
            Container(
              margin:  EdgeInsets.fromLTRB(0, 0, 0, 25),
              width:  double.infinity,
              child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child:
                    Container(
                      margin:  EdgeInsets.fromLTRB(0, 0, 0, 8),
                      child:
                      RichText(
                        textAlign: TextAlign.center,
                        text:
                        TextSpan(
                            style: GoogleFonts.poppins(
                            fontSize:  25,
                            height: 5,
                            fontWeight:  FontWeight.w600,
                            color:  Color(0xff2e1753),
                          ),
                          children: [
                            TextSpan(
                            text:  'Family Wealth ',
                            style: GoogleFonts.poppins(
                              fontSize:  25,
                              height: 5,
                              fontWeight:  FontWeight.w600,
                              color:  Color(0xff2e1753),
                            ),
                        ),
                          TextSpan(
                            text:  '&',
                              style: GoogleFonts.poppins(
                                fontSize:  25,
                                height: 5,
                                fontWeight:  FontWeight.w600,
                                color:  Color(0xffe94560),
                              ),
                          ),
                            TextSpan(
                              text:  ' Happiness.',
                                style: GoogleFonts.poppins(
                                  fontSize:  25,
                                  height: 5,
                                  fontWeight:  FontWeight.w600,
                                  color:  Color(0xff2e1753),
                                ),
                            ),

                          ]
                        ),


                      ),
                    ),
                  ),
                  Center(
                    child:
                    Container(
                      margin:  EdgeInsets.fromLTRB(0, 0, 0, 0),
                      constraints:  BoxConstraints (
                        maxWidth:  300,
                      ),
                      child:
                      Text(
                        'The preservation of Health is easier than the cure of the disease',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontSize:  16,
                          fontWeight:  FontWeight.w400,
                          color:  Color(0xff724db9),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //logo
            Container(
              // iconFcq (1:156)
                margin: EdgeInsets.only(left: 226, bottom: 30),
                width:  double.infinity,
                decoration:  BoxDecoration (
                  borderRadius:  BorderRadius.circular(18),
                ),

                child:
                Align(
                  alignment: Alignment(0.5, 0.6),
                  child:
                  Row(
                    crossAxisAlignment:  CrossAxisAlignment.center,
                    children:  [
                      Container(
                        // rectangle1015Vn5 (1:157)
                        margin:  EdgeInsets.fromLTRB(0, 0.79, 2.36, 0),
                        width:  3.94,
                        height:  15.76,
                        decoration:  BoxDecoration (
                          borderRadius:  BorderRadius.circular(18),
                          color:  Color(0xffe94560),
                        ),
                      ),
                      Container(
                        // rectangle1016ki1 (1:158)
                        margin:  EdgeInsets.fromLTRB(0, 0, 2.36, 0),
                        width:  3.94,
                        height:  26,
                        decoration:  BoxDecoration (
                          borderRadius:  BorderRadius.circular(18),
                          color:  Color(0xff2e1753),
                        ),
                      ),
                      Container(
                        // rectangle1017EdB (1:159)
                        margin:  EdgeInsets.fromLTRB(0, 0.79, 0, 0),
                        width:  3.94,
                        height:  9.45,
                        decoration:  BoxDecoration (
                          borderRadius:  BorderRadius.circular(18),
                          color:  Color(0xff2e1753),
                        ),
                      ),
                    ],
                  ),
                )
            ),
            Container(
              margin:  EdgeInsets.fromLTRB(56.5, 0, 58.5, 0),
              child:
              Center(
                  child:
                  SizedBox(
                    width: 225,
                    height: 60,
                    child:
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Register()),
                        );
                      },

                      child: Text('Get Started'),
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: Color(0xff74369a),
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontStyle: FontStyle.normal),
                      ),
                    ),
                  )
              ),
            ),
            Container(
              margin:  EdgeInsets.only(left: 100),
              height: 75,
              child:
              Row(
                crossAxisAlignment:  CrossAxisAlignment.center,
                children:  [
                  Center(
                    child:
                    Container(
                      margin:  EdgeInsets.fromLTRB(0, 0, 7, 0),
                      child:
                      Text(
                        'Already have an account?',
                        textAlign:  TextAlign.center,
                        style:  GoogleFonts.poppins (
                          fontSize:  16,
                          fontWeight:  FontWeight.w400,
                          color:  Color(0xff724db9),
                        ),
                      ),
                    ),
                  ),
                  Center(
                      child:
                      TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Color(0xffe94560),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const login()),
                            );
                          },
                          child: Text('Login',
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700))

                      )
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
