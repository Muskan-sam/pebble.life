import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pebble_life/MainScreens/DoctorsList.dart';
import 'dart:async';

import '../util/CategoryCard.dart';

class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
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
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(12),

                    ),
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 45,
                    ),
                  ),

                  Row(
                    children: [
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                            size: 35,

                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Doctors_List()),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
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
                  )

                ],
              ),

            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          'Good morning',
                        style: TextStyle(
                          fontSize: 38,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 8,),
                      Text(
                        'Mr. Naik',
                        style: TextStyle(
                            fontSize: 54,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                        ),
                      )
                    ],
                  ),


                ],
              ),

            ),
            SizedBox(height: 20,),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 18.0),
                    child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple[500],
                          borderRadius: BorderRadius.circular(20),

                        ),
                        child: Row(
                          children: [
                            Image.asset('assets/images/bx_search-alt.png',
                              width: 100,)

                          ],
                        )
                      // child: Image.asset(
                      //     'assets/images/bx_search-alt.png')
                    ),

                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 18.0),
                    child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color:  Color(0xffe94560),
                          borderRadius: BorderRadius.circular(20),

                        ),
                        child: Row(
                          children: [
                            Image.asset('assets/images/ant-design_heart-filled.png',
                              width: 100,)

                          ],
                        )
                      // child: Image.asset(
                      //     'assets/images/bx_search-alt.png')
                    ),

                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 18.0),
                    child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color:  Color(0xff5379ee),
                          borderRadius: BorderRadius.circular(20),

                        ),
                        child: Row(
                          children: [
                            Image.asset('assets/images/mdi_tooth.png',
                              width: 100,)

                          ],
                        )
                      // child: Image.asset(
                      //     'assets/images/bx_search-alt.png')
                    ),

                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 18.0),
                    child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color:  Color(0xfff88342),
                          borderRadius: BorderRadius.circular(20),

                        ),
                        child: Row(
                          children: [
                            Image.asset('assets/images/fa-solid_temperature-high.png',
                              width: 100,)

                          ],
                        )
                      // child: Image.asset(
                      //     'assets/images/bx_search-alt.png')
                    ),

                  ),


                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 18.0),
                    child: Container(
                        height: 200,
                        width: 200,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Color(0xff319da0),
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(image: AssetImage('assets/images/card_bg.png'))

                        ),
                        child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('New Test',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,

                            ),
                          ),
                          IconButton(
                            alignment: Alignment.center,
                            padding: EdgeInsets.fromLTRB(0, 10, 70, 0),
                            onPressed: (){},
                            icon: Icon(
                              Icons.add,
                              size: 100,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),

                    ),

                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 18.0),
                    child: Container(
                      height: 200,
                      width: 200,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Color(0xff319da0),
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(image: AssetImage('assets/images/card_bg.png'))

                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('New Test',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,

                            ),
                          ),
                          IconButton(
                            alignment: Alignment.center,
                            padding: EdgeInsets.fromLTRB(0, 10, 70, 0),
                            onPressed: (){},
                            icon: Icon(
                              Icons.add,
                              size: 100,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),

                    ),

                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 18.0),
                    child: Container(
                      height: 200,
                      width: 200,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Color(0xff319da0),
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(image: AssetImage('assets/images/card_bg.png'))

                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('New Test',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,

                            ),
                          ),
                          IconButton(
                            alignment: Alignment.center,
                            padding: EdgeInsets.fromLTRB(0, 10, 70, 0),
                            onPressed: (){},
                            icon: Icon(
                              Icons.add,
                              size: 100,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),

                    ),

                  ),
                 


                ],
              ),

            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: Text(
                    'Prescription Records',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffe94560),
                    ),

                  ),
                ),
                Container(
                  height: 300,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.circular(20),

                          ),
                          child: Row(

                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 18),
                                height: 100,
                                width: 100,
                                color: Colors.deepPurple,
                              ),
                              Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Consultations',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 35,
                                          color: Colors.white,
                                        ),),
                                      Text('12:30',
                                        style: TextStyle(
                                          fontSize: 27,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  )
                              ),
                            ],
                          ),

                        ),

                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.circular(20),

                          ),
                          child: Row(

                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 18),
                                height: 100,
                                width: 100,
                                color: Colors.deepPurple,
                              ),
                              Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Consultations',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 35,
                                          color: Colors.white,
                                        ),),
                                      Text('12:30',
                                        style: TextStyle(
                                          fontSize: 27,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  )
                              ),
                            ],
                          ),

                        ),

                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.circular(20),

                          ),
                          child: Row(

                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 18),
                                height: 100,
                                width: 100,
                                color: Colors.deepPurple,
                              ),
                              Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Consultations',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 35,
                                          color: Colors.white,
                                        ),),
                                      Text('12:30',
                                        style: TextStyle(
                                          fontSize: 27,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  )
                              ),
                            ],
                          ),

                        ),

                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.circular(20),

                          ),
                          child: Row(

                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 18),
                                height: 100,
                                width: 100,
                                color: Colors.deepPurple,
                              ),
                              Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Consultations',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 35,
                                          color: Colors.white,
                                        ),),
                                      Text('12:30',
                                        style: TextStyle(
                                          fontSize: 27,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  )
                              ),
                            ],
                          ),

                        ),

                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.circular(20),

                          ),
                          child: Row(

                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 18),
                                height: 100,
                                width: 100,
                                color: Colors.deepPurple,
                              ),
                              Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Consultations',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 35,
                                          color: Colors.white,
                                        ),),
                                      Text('12:30',
                                        style: TextStyle(
                                          fontSize: 27,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  )
                              ),
                            ],
                          ),

                        ),

                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.circular(20),

                          ),
                          child: Row(

                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 18),
                                height: 100,
                                width: 100,
                                color: Colors.deepPurple,
                              ),
                              Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Consultations',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 35,
                                          color: Colors.white,
                                        ),),
                                      Text('12:30',
                                        style: TextStyle(
                                          fontSize: 27,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  )
                              ),
                            ],
                          ),

                        ),

                      ),
                      SizedBox(height: 20,),




                    ],
                  ),

                ),

              ],
            ),


          ],
        ),
      ),
    );
  }
}
