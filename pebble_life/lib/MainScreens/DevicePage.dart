import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';

class device_page extends StatefulWidget {
  const device_page({Key? key}) : super(key: key);

  @override
  State<device_page> createState() => _device_pageState();
}

class _device_pageState extends State<device_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3f0c61),
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                      onTap: (){ },
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 35,

                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Text(
                  'Device Information',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),

                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: MediaQuery.of(context).size.height * 0.80,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Flex(
                      direction: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Container(
                            padding: EdgeInsets.all(25),
                            decoration: BoxDecoration(
                                color:  Colors.deepPurple,
                                borderRadius: BorderRadius.circular(16)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Device Name',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white
                                  ),
                                ),
                                Text('GX - 125EZ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.redAccent
                                  ),
                                ),
                                SizedBox(height: 10,),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset('assets/images/deviceimage.png',
                                    height: 80,),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  width: 150,
                                  height: 30,
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.only(top: 15),
                                  child: ElevatedButton(
                                    onPressed: (){},
                                    child: Text('More Info'),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xffe94560),
                                      shape: StadiumBorder(),
                                      textStyle: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      )
                                    ),
                                  )
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Container(
                            padding: EdgeInsets.all(25),
                            decoration: BoxDecoration(
                                color:  Colors.deepPurple,
                                borderRadius: BorderRadius.circular(16)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Device Name',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white
                                  ),
                                ),
                                Text('GX - 125EZ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.redAccent
                                  ),
                                ),
                                SizedBox(height: 10,),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset('assets/images/deviceimage.png',
                                    height: 80,),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                    width: 150,
                                    height: 30,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(top: 15),
                                    child: ElevatedButton(
                                      onPressed: (){},
                                      child: Text('More Info'),
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xffe94560),
                                          shape: StadiumBorder(),
                                          textStyle: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                          )
                                      ),
                                    )
                                ),
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
                            padding: EdgeInsets.all(25),
                            decoration: BoxDecoration(
                                color:  Colors.deepPurple,
                                borderRadius: BorderRadius.circular(16)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Device Name',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white
                                  ),
                                ),
                                Text('GX - 125EZ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.redAccent
                                  ),
                                ),
                                SizedBox(height: 10,),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset('assets/images/deviceimage.png',
                                    height: 80,),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                    width: 150,
                                    height: 30,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(top: 15),
                                    child: ElevatedButton(
                                      onPressed: (){},
                                      child: Text('More Info'),
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xffe94560),
                                          shape: StadiumBorder(),
                                          textStyle: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                          )
                                      ),
                                    )
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Container(
                            padding: EdgeInsets.all(25),
                            decoration: BoxDecoration(
                                color:  Colors.deepPurple,
                                borderRadius: BorderRadius.circular(16)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Device Name',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white
                                  ),
                                ),
                                Text('GX - 125EZ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.redAccent
                                  ),
                                ),
                                SizedBox(height: 10,),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset('assets/images/deviceimage.png',
                                    height: 80,),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                    width: 150,
                                    height: 30,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(top: 15),
                                    child: ElevatedButton(
                                      onPressed: (){},
                                      child: Text('More Info'),
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xffe94560),
                                          shape: StadiumBorder(),
                                          textStyle: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                          )
                                      ),
                                    )
                                ),
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
                            padding: EdgeInsets.all(25),
                            decoration: BoxDecoration(
                                color:  Colors.deepPurple,
                                borderRadius: BorderRadius.circular(16)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Device Name',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white
                                  ),
                                ),
                                Text('GX - 125EZ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.redAccent
                                  ),
                                ),
                                SizedBox(height: 10,),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset('assets/images/deviceimage.png',
                                    height: 80,),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                    width: 150,
                                    height: 30,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(top: 15),
                                    child: ElevatedButton(
                                      onPressed: (){},
                                      child: Text('More Info'),
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xffe94560),
                                          shape: StadiumBorder(),
                                          textStyle: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                          )
                                      ),
                                    )
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Container(
                            padding: EdgeInsets.all(25),
                            decoration: BoxDecoration(
                                color:  Colors.deepPurple,
                                borderRadius: BorderRadius.circular(16)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Device Name',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white
                                  ),
                                ),
                                Text('GX - 125EZ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.redAccent
                                  ),
                                ),
                                SizedBox(height: 10,),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset('assets/images/deviceimage.png',
                                    height: 80,),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                    width: 150,
                                    height: 30,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(top: 15),
                                    child: ElevatedButton(
                                      onPressed: (){},
                                      child: Text('More Info'),
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xffe94560),
                                          shape: StadiumBorder(),
                                          textStyle: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                          )
                                      ),
                                    )
                                ),
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
                            padding: EdgeInsets.all(25),
                            decoration: BoxDecoration(
                                color:  Colors.deepPurple,
                                borderRadius: BorderRadius.circular(16)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Device Name',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white
                                  ),
                                ),
                                Text('GX - 125EZ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.redAccent
                                  ),
                                ),
                                SizedBox(height: 10,),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset('assets/images/deviceimage.png',
                                    height: 80,),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                    width: 150,
                                    height: 30,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(top: 15),
                                    child: ElevatedButton(
                                      onPressed: (){},
                                      child: Text('More Info'),
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xffe94560),
                                          shape: StadiumBorder(),
                                          textStyle: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                          )
                                      ),
                                    )
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Container(
                            padding: EdgeInsets.all(25),
                            decoration: BoxDecoration(
                                color:  Colors.deepPurple,
                                borderRadius: BorderRadius.circular(16)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Device Name',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white
                                  ),
                                ),
                                Text('GX - 125EZ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.redAccent
                                  ),
                                ),
                                SizedBox(height: 10,),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset('assets/images/deviceimage.png',
                                    height: 80,),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                    width: 150,
                                    height: 30,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(top: 15),
                                    child: ElevatedButton(
                                      onPressed: (){},
                                      child: Text('More Info'),
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xffe94560),
                                          shape: StadiumBorder(),
                                          textStyle: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                          )
                                      ),
                                    )
                                ),
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

