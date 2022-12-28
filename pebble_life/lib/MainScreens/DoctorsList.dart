import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';

import 'package:pebble_life/MainScreens/DevicePage.dart';

class Doctors_List extends StatefulWidget {
  const Doctors_List({Key? key}) : super(key: key);

  @override
  State<Doctors_List> createState() => _Doctors_ListState();
}

class _Doctors_ListState extends State<Doctors_List> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3f0c61),
      body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          color: Colors.white,
                          size: 35,

                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const device_page()),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(12),
                        width: 35,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: AssetImage('assets/images/menu_icon.png'),
                              fit: BoxFit.contain,
                            )
                        ),


                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Text(
                  'Doctor’s List',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 44,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffb897cc),
                  ),

                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: MediaQuery.of(context).size.height * 0.78,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Flex(
                      direction: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color:  Colors.deepPurple,
                                borderRadius: BorderRadius.circular(16)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset('assets/images/doctorsimage.png',
                                    height: 80,),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  alignment: Alignment.center,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange[400],
                                      ),
                                      Text('4.9',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('Dr. Anubh Jain',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white
                                  ),
                                ),
                                Text('ENT Specialist, 5 Years',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 70,
                                        height: 40,
                                        margin: EdgeInsets.only(right: 15),
                                        decoration: BoxDecoration(
                                            color:  Color(0xff3f0c61),
                                            borderRadius: BorderRadius.circular(16)
                                        ),
                                        child: IconButton(
                                            onPressed: (){},
                                            icon: Icon(
                                              Icons.call,
                                              color: Colors.white,
                                              size: 25,
                                            )
                                        ),
                                      ),
                                      Container(
                                        width: 70,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            color:  Color(0xff3f0c61),
                                            borderRadius: BorderRadius.circular(16)
                                        ),
                                        child: IconButton(
                                            onPressed: (){},
                                            icon: Icon(
                                              Icons.message,
                                              color: Colors.white,
                                              size: 25,
                                            )
                                        ),
                                      ),
                                    ],

                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color:  Colors.deepPurple,
                                borderRadius: BorderRadius.circular(16)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset('assets/images/doctorsimage.png',
                                    height: 80,),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  alignment: Alignment.center,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange[400],
                                      ),
                                      Text('4.9',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('Dr. Anubh Jain',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white
                                  ),
                                ),
                                Text('ENT Specialist, 5 Years',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 70,
                                        height: 40,
                                        margin: EdgeInsets.only(right: 15),
                                        decoration: BoxDecoration(
                                            color:  Color(0xff3f0c61),
                                            borderRadius: BorderRadius.circular(16)
                                        ),
                                        child: IconButton(
                                            onPressed: (){},
                                            icon: Icon(
                                              Icons.call,
                                              color: Colors.white,
                                              size: 25,
                                            )
                                        ),
                                      ),
                                      Container(
                                        width: 70,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            color:  Color(0xff3f0c61),
                                            borderRadius: BorderRadius.circular(16)
                                        ),
                                        child: IconButton(
                                            onPressed: (){},
                                            icon: Icon(
                                              Icons.message,
                                              color: Colors.white,
                                              size: 25,
                                            )
                                        ),
                                      ),
                                    ],

                                  ),
                                )
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                    SizedBox(height: 20,),
                    Flex(
                      direction: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color:  Colors.deepPurple,
                                borderRadius: BorderRadius.circular(16)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset('assets/images/doctorsimage.png',
                                    height: 80,),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  alignment: Alignment.center,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange[400],
                                      ),
                                      Text('4.9',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('Dr. Anubh Jain',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white
                                  ),
                                ),
                                Text('ENT Specialist, 5 Years',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 70,
                                        height: 40,
                                        margin: EdgeInsets.only(right: 15),
                                        decoration: BoxDecoration(
                                            color:  Color(0xff3f0c61),
                                            borderRadius: BorderRadius.circular(16)
                                        ),
                                        child: IconButton(
                                            onPressed: (){},
                                            icon: Icon(
                                              Icons.call,
                                              color: Colors.white,
                                              size: 25,
                                            )
                                        ),
                                      ),
                                      Container(
                                        width: 70,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            color:  Color(0xff3f0c61),
                                            borderRadius: BorderRadius.circular(16)
                                        ),
                                        child: IconButton(
                                            onPressed: (){},
                                            icon: Icon(
                                              Icons.message,
                                              color: Colors.white,
                                              size: 25,
                                            )
                                        ),
                                      ),
                                    ],

                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color:  Colors.deepPurple,
                                borderRadius: BorderRadius.circular(16)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset('assets/images/doctorsimage.png',
                                    height: 80,),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  alignment: Alignment.center,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange[400],
                                      ),
                                      Text('4.9',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('Dr. Anubh Jain',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white
                                  ),
                                ),
                                Text('ENT Specialist, 5 Years',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 70,
                                        height: 40,
                                        margin: EdgeInsets.only(right: 15),
                                        decoration: BoxDecoration(
                                            color:  Color(0xff3f0c61),
                                            borderRadius: BorderRadius.circular(16)
                                        ),
                                        child: IconButton(
                                            onPressed: (){},
                                            icon: Icon(
                                              Icons.call,
                                              color: Colors.white,
                                              size: 25,
                                            )
                                        ),
                                      ),
                                      Container(
                                        width: 70,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            color:  Color(0xff3f0c61),
                                            borderRadius: BorderRadius.circular(16)
                                        ),
                                        child: IconButton(
                                            onPressed: (){},
                                            icon: Icon(
                                              Icons.message,
                                              color: Colors.white,
                                              size: 25,
                                            )
                                        ),
                                      ),
                                    ],

                                  ),
                                )
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                    SizedBox(height: 20,),
                    Flex(
                      direction: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color:  Colors.deepPurple,
                                borderRadius: BorderRadius.circular(16)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset('assets/images/doctorsimage.png',
                                    height: 80,),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  alignment: Alignment.center,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange[400],
                                      ),
                                      Text('4.9',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('Dr. Anubh Jain',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white
                                  ),
                                ),
                                Text('ENT Specialist, 5 Years',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 70,
                                        height: 40,
                                        margin: EdgeInsets.only(right: 15),
                                        decoration: BoxDecoration(
                                            color:  Color(0xff3f0c61),
                                            borderRadius: BorderRadius.circular(16)
                                        ),
                                        child: IconButton(
                                            onPressed: (){},
                                            icon: Icon(
                                              Icons.call,
                                              color: Colors.white,
                                              size: 25,
                                            )
                                        ),
                                      ),
                                      Container(
                                        width: 70,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            color:  Color(0xff3f0c61),
                                            borderRadius: BorderRadius.circular(16)
                                        ),
                                        child: IconButton(
                                            onPressed: (){},
                                            icon: Icon(
                                              Icons.message,
                                              color: Colors.white,
                                              size: 25,
                                            )
                                        ),
                                      ),
                                    ],

                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color:  Colors.deepPurple,
                                borderRadius: BorderRadius.circular(16)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset('assets/images/doctorsimage.png',
                                    height: 80,),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  alignment: Alignment.center,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange[400],
                                      ),
                                      Text('4.9',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('Dr. Anubh Jain',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white
                                  ),
                                ),
                                Text('ENT Specialist, 5 Years',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 70,
                                        height: 40,
                                        margin: EdgeInsets.only(right: 15),
                                        decoration: BoxDecoration(
                                            color:  Color(0xff3f0c61),
                                            borderRadius: BorderRadius.circular(16)
                                        ),
                                        child: IconButton(
                                            onPressed: (){},
                                            icon: Icon(
                                              Icons.call,
                                              color: Colors.white,
                                              size: 25,
                                            )
                                        ),
                                      ),
                                      Container(
                                        width: 70,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            color:  Color(0xff3f0c61),
                                            borderRadius: BorderRadius.circular(16)
                                        ),
                                        child: IconButton(
                                            onPressed: (){},
                                            icon: Icon(
                                              Icons.message,
                                              color: Colors.white,
                                              size: 25,
                                            )
                                        ),
                                      ),
                                    ],

                                  ),
                                )
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                    SizedBox(height: 20,),
                    Flex(
                      direction: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color:  Colors.deepPurple,
                                borderRadius: BorderRadius.circular(16)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset('assets/images/doctorsimage.png',
                                    height: 80,),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  alignment: Alignment.center,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange[400],
                                      ),
                                      Text('4.9',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('Dr. Anubh Jain',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white
                                  ),
                                ),
                                Text('ENT Specialist, 5 Years',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 70,
                                        height: 40,
                                        margin: EdgeInsets.only(right: 15),
                                        decoration: BoxDecoration(
                                            color:  Color(0xff3f0c61),
                                            borderRadius: BorderRadius.circular(16)
                                        ),
                                        child: IconButton(
                                            onPressed: (){},
                                            icon: Icon(
                                              Icons.call,
                                              color: Colors.white,
                                              size: 25,
                                            )
                                        ),
                                      ),
                                      Container(
                                        width: 70,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            color:  Color(0xff3f0c61),
                                            borderRadius: BorderRadius.circular(16)
                                        ),
                                        child: IconButton(
                                            onPressed: (){},
                                            icon: Icon(
                                              Icons.message,
                                              color: Colors.white,
                                              size: 25,
                                            )
                                        ),
                                      ),
                                    ],

                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color:  Colors.deepPurple,
                                borderRadius: BorderRadius.circular(16)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset('assets/images/doctorsimage.png',
                                    height: 80,),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  alignment: Alignment.center,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange[400],
                                      ),
                                      Text('4.9',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('Dr. Anubh Jain',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white
                                  ),
                                ),
                                Text('ENT Specialist, 5 Years',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 70,
                                        height: 40,
                                        margin: EdgeInsets.only(right: 15),
                                        decoration: BoxDecoration(
                                            color:  Color(0xff3f0c61),
                                            borderRadius: BorderRadius.circular(16)
                                        ),
                                        child: IconButton(
                                            onPressed: (){},
                                            icon: Icon(
                                              Icons.call,
                                              color: Colors.white,
                                              size: 25,
                                            )
                                        ),
                                      ),
                                      Container(
                                        width: 70,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            color:  Color(0xff3f0c61),
                                            borderRadius: BorderRadius.circular(16)
                                        ),
                                        child: IconButton(
                                            onPressed: (){},
                                            icon: Icon(
                                              Icons.message,
                                              color: Colors.white,
                                              size: 25,
                                            )
                                        ),
                                      ),
                                    ],

                                  ),
                                )
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                    SizedBox(height: 20,),
                  ],
                ),
              ),


            ],
          )
      ),
    );
  }
}
