import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileDispaly extends StatefulWidget {
  const ProfileDispaly({Key? key}) : super(key: key);

  @override
  State<ProfileDispaly> createState() => _ProfileDispalyState();
}

class _ProfileDispalyState extends State<ProfileDispaly> {
  @override
  Widget build(BuildContext context) {
    var size,height,width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                          size: 35,

                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 80),
                      child: Center(
                        child: Text(
                          'Your Profile',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color:  Color(0xffe94560),
                          ),

                        ),
                      ),
                    ),

                  ],
                ),

              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                            "https://picsum.photos/200"),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Aabirbhab Naik',
                        style: TextStyle(
                          fontSize: 22,
                          color:  Color(0xff4e1a6d),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Head Of Surgeon, 21 y.o',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff6339a7),
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30.0),
                child: Container(
                  margin: EdgeInsets.fromLTRB(10, 5,10, 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '5 ',
                            textAlign:  TextAlign.center,
                            style:  TextStyle (
                              fontSize:  20,
                              fontWeight:  FontWeight.w600,
                              color:  Color(0xffe94560),
                            ),
                          ),
                          Text(
                              'Acheivements',
                            textAlign:  TextAlign.center,
                            style:  TextStyle (
                              fontSize:  16,
                              fontWeight:  FontWeight.w600,
                              color:  Color(0xff4e1a6d),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'ENT',
                            textAlign:  TextAlign.center,
                            style:  TextStyle (
                              fontSize:  20,
                              fontWeight:  FontWeight.w600,
                              color:  Color(0xffe94560),
                            ),
                          ),
                          Text(
                            'Specialization',
                            textAlign:  TextAlign.center,
                            style:  TextStyle (
                              fontSize:  16,
                              fontWeight:  FontWeight.w600,
                              color:  Color(0xff4e1a6d),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '10',
                            textAlign:  TextAlign.center,
                            style:  TextStyle (
                              fontSize:  20,
                              fontWeight:  FontWeight.w600,
                              color:  Color(0xffe94560),
                            ),
                          ),
                          Text(
                            'Y.O.E',
                            textAlign:  TextAlign.center,
                            style:  TextStyle (
                              fontSize:  16,
                              fontWeight:  FontWeight.w600,
                              color:  Color(0xff4e1a6d),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration:BoxDecoration(
                    color: Color(0xffe94560),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                  ) ,
                  child: Container(
                    margin: EdgeInsets.only(top: 20.0),
                    height: double.infinity,
                    width: double.infinity,
                    decoration:BoxDecoration(
                      color: Color(0xff4e1a6d),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                    ) ,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: Container(
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: FaIcon(
                                  FontAwesomeIcons.edit,
                                  color: Color(0xffe94560),
                                  size: 28,

                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(50, 0, 50, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Doctor ID',
                                textAlign:  TextAlign.center,
                                style:  TextStyle (
                                  fontSize:  20,
                                  fontWeight:  FontWeight.w400,
                                  color:  Color(0xfff8edff),
                                ),
                              ),
                              Text(
                                'XXXXXXXXX',
                                textAlign:  TextAlign.center,
                                style:  TextStyle (
                                  fontSize:  20,
                                  fontWeight:  FontWeight.w500,
                                  color:  Color(0xfff8edff),
                                ),
                              ),
                            ],

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(50, 20, 50, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Address',
                                textAlign:  TextAlign.center,
                                style:  TextStyle (
                                  fontSize:  20,
                                  fontWeight:  FontWeight.w400,
                                  color:  Color(0xfff8edff),
                                ),
                              ),
                              Text(
                                'A - 338, Sector - 47',
                                textAlign:  TextAlign.center,
                                style:  TextStyle (
                                  fontSize:  20,
                                  fontWeight:  FontWeight.w500,
                                  color:  Color(0xfff8edff),
                                ),
                              ),
                            ],

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(50, 20, 50, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'City',
                                textAlign:  TextAlign.center,
                                style:  TextStyle (
                                  fontSize:  20,
                                  fontWeight:  FontWeight.w400,
                                  color:  Color(0xfff8edff),
                                ),
                              ),
                              Text(
                                'Noida',
                                textAlign:  TextAlign.center,
                                style:  TextStyle (
                                  fontSize:  20,
                                  fontWeight:  FontWeight.w500,
                                  color:  Color(0xfff8edff),
                                ),
                              ),
                            ],

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(50, 20, 50, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'State',
                                textAlign:  TextAlign.center,
                                style:  TextStyle (
                                  fontSize:  20,
                                  fontWeight:  FontWeight.w400,
                                  color:  Color(0xfff8edff),
                                ),
                              ),
                              Text(
                                'Uttar Pradesh',
                                textAlign:  TextAlign.center,
                                style:  TextStyle (
                                  fontSize:  20,
                                  fontWeight:  FontWeight.w500,
                                  color:  Color(0xfff8edff),
                                ),
                              ),
                            ],

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(50, 20, 50, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Education',
                                textAlign:  TextAlign.center,
                                style:  TextStyle (
                                  fontSize:  20,
                                  fontWeight:  FontWeight.w400,
                                  color:  Color(0xfff8edff),
                                ),
                              ),
                              Text(
                                'St. Thomas Mascot',
                                textAlign:  TextAlign.center,
                                style:  TextStyle (
                                  fontSize:  20,
                                  fontWeight:  FontWeight.w500,
                                  color:  Color(0xfff8edff),
                                ),
                              ),
                            ],

                          ),
                        ),
                        Divider(
                          color:  Color(0xfff8edff),
                          thickness: 2,
                          indent: 30,
                          endIndent: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(50, 0, 50, 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Payment method',
                                textAlign:  TextAlign.center,
                                style:  TextStyle (
                                  fontSize:  20,
                                  fontWeight:  FontWeight.w400,
                                  color:  Color(0xfff8edff),
                                ),
                              ),
                              Text(
                                'Visa Master',
                                textAlign:  TextAlign.center,
                                style:  TextStyle (
                                  fontSize:  20,
                                  fontWeight:  FontWeight.w500,
                                  color:  Color(0xfff8edff),
                                ),
                              ),
                            ],

                          ),
                        ),


                      ],
                    ),

                  ),
                ),
              )

            ],
          )
      ),

    );
  }
}



