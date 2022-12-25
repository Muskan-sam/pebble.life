import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:toggle_switch/toggle_switch.dart';

import 'dart:async';

import 'package:pebble_life/Profile/Profile_page2.dart';

class profile_main extends StatefulWidget {
  const profile_main({Key? key}) : super(key: key);

  @override
  State<profile_main> createState() => _profile_mainState();
}

class _profile_mainState extends State<profile_main> {

  TextEditingController nameController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  String? _chosenValue;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Container(
          margin: EdgeInsets.fromLTRB(26, 50, 26, 10),
          child: Stack(
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
                margin: EdgeInsets.fromLTRB(0, 80, 0, 10),
                child: GestureDetector(
                  onTap: (){
                    FocusScope.of(context).unfocus();
                  },
                  child: ListView(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 130,
                            height: 130,
                            decoration: BoxDecoration(
                                border: Border.all(width: 4, color: Color(0xff724db9)),
                                boxShadow: [
                                  BoxShadow(
                                      spreadRadius: 2,
                                      blurRadius: 10,
                                      color: Colors.black.withOpacity(0.1)
                                  )
                                ],
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage('https://t3.ftcdn.net/jpg/05/14/18/46/360_F_514184651_W5rVCabKKRH6H3mVb62jYWfuXio8c8si.jpg')
                                )
                            ),
                          ),
                          Positioned(
                              bottom: 0,
                              left: 0,
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 4,
                                    color: Colors.white,
                                  ),
                                  color: Color(0xff74369a),
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              )
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.only(top: 250),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
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
                          labelText: 'First Name*',
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
                          labelText: 'Middle Name (Optional)',
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
                          labelText: 'Last Name*',
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
                        controller: dateController,

                        decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xfff8edff),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 2,
                                  color: Color(0xff74369a),),
                                borderRadius: BorderRadius.all(Radius.circular(10),)
                            ),
                            labelText: 'Date Of Birth*',
                            labelStyle: TextStyle(
                              color: Color(0xff74369a),
                            ),
                            suffixIcon: Padding(
                              padding: const EdgeInsetsDirectional.only(end: 12.0),
                              child: Icon(
                                Icons.calendar_today,
                                color: Color(0xff74369a),
                              ),
                            )
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(bottom: 20),


                      child: DropdownButtonFormField<String>(
                        value: _chosenValue,
                        decoration: InputDecoration(filled: true,
                          fillColor: Color(0xfff8edff),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 2,
                                color: Color(0xff74369a),),
                              borderRadius: BorderRadius.all(Radius.circular(10),)
                          )


                          ),
                        style: TextStyle(
                          color: Color(0xff74369a),
                        ),
                        dropdownColor: Color(0xfff8edff),
                        borderRadius: BorderRadius.all(Radius.circular(10),) ,

                        items: <String>[
                          'Male',
                          'Female',
                          'Prefer not to say',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        hint: Text(
                          "Please choose a langauage",
                          style: TextStyle(
                              color: Color(0xff74369a),
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            _chosenValue = value;
                          });
                        },
                      ),

                    ),

                    Container(
                      alignment: Alignment.bottomCenter,
                      padding: EdgeInsets.all(20),
                      margin:  EdgeInsets.fromLTRB(56.5, 30, 58.5, 0),
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
                                  MaterialPageRoute(builder: (context) => const profile_sub()),
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
              ),

            ],
          ),


        ),




      ),
    );
  }

}

