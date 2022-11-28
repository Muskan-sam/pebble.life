import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
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
                  )
                ],
              ),
            )


          ],
        ),
      ),
    );
  }
}
