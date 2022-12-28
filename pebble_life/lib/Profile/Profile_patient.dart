import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:pebble_life/MainScreens/Dashboard.dart';
import 'package:toggle_switch/toggle_switch.dart';

import 'dart:async';

class profile_patient extends StatefulWidget {
  const profile_patient({Key? key}) : super(key: key);

  @override
  State<profile_patient> createState() => _profile_patientState();
}

class _profile_patientState extends State<profile_patient> {

  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Container(
            margin: EdgeInsets.fromLTRB(26, 50, 26, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child:
                  Text(
                    'Profile',
                    style:  GoogleFonts.poppins (
                      fontSize:  36,
                      fontWeight:  FontWeight.w700,
                      color:  Color(0xff74369a),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 50,
                  child:
                  Text(
                    'Let’s get started and complete your profile',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(
                      fontSize:  18,
                      fontWeight:  FontWeight.w400,
                      color:  Color(0xff724db9),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(bottom: 20, top: 50),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xfff8edff),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2,
                            color: Color(0xff74369a),),
                          borderRadius: BorderRadius.all(Radius.circular(10),)
                      ),
                      labelText: 'Adhar ID*',
                      labelStyle: TextStyle(
                        color: Color(0xff74369a),
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(bottom: 20),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xfff8edff),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2,
                            color: Color(0xff74369a),),
                          borderRadius: BorderRadius.all(Radius.circular(10),)
                      ),
                      labelText: 'Height',
                      labelStyle: TextStyle(
                        color: Color(0xff74369a),
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(bottom: 20),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xfff8edff),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2,
                            color: Color(0xff74369a),),
                          borderRadius: BorderRadius.all(Radius.circular(10),)
                      ),
                      labelText: 'Weight',
                      labelStyle: TextStyle(
                        color: Color(0xff74369a),
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(bottom: 20),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xfff8edff),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2,
                            color: Color(0xff74369a),),
                          borderRadius: BorderRadius.all(Radius.circular(10),)
                      ),
                      labelText: 'Blood Type',
                      labelStyle: TextStyle(
                        color: Color(0xff74369a),
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(bottom: 20),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xfff8edff),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2,
                            color: Color(0xff74369a),),
                          borderRadius: BorderRadius.all(Radius.circular(10),)
                      ),
                      labelText: 'Age',
                      labelStyle: TextStyle(
                        color: Color(0xff74369a),
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(bottom: 20),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xfff8edff),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2,
                            color: Color(0xff74369a),),
                          borderRadius: BorderRadius.all(Radius.circular(10),)
                      ),
                      labelText: 'Location',
                      labelStyle: TextStyle(
                        color: Color(0xff74369a),
                      ),
                    ),
                  ),
                ),


                Container(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.all(20),
                  margin:  EdgeInsets.fromLTRB(56.5, 50, 58.5, 0),
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
                              MaterialPageRoute(builder: (context) => const dashboard()),
                            );
                          },
                          child: Text('Next'),
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
              ],

            ),
          )





      ),
    );
  }
}
