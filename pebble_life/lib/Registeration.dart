import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pebble_life/Profile/Profile_page1.dart';

import 'package:pebble_life/login.dart';

import 'connect_with.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
              width:  300,
              height:  220,
              margin: EdgeInsets.fromLTRB(0, 45, 0, 0),
              child:
              Image.asset('assets/images/register.png',
              ),
            ),
            Container(
              margin:  EdgeInsets.fromLTRB(0, 0, 2, 0),
              child:
              Text(
                'Register Now.',
                style:  GoogleFonts.poppins (
                  fontSize:  36,
                  fontWeight:  FontWeight.w700,
                  height:  5,
                  color:  Color(0xff74369a),
                ),
              ),
            ),
            Container(
              margin:  EdgeInsets.fromLTRB(0, 0, 0, 0),
              constraints:  BoxConstraints (
                maxWidth:  400,
              ),
              child:
              Text(
                'Please enter the details below to continue',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize:  18,
                  fontWeight:  FontWeight.w400,
                  color:  Color(0xff724db9),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
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
                  labelText: 'Enter your email',
                  labelStyle: TextStyle(
                    color: Color(0xff74369a),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color(0xfff8edff),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2,
                    color: Color(0xff74369a),),
                      borderRadius: BorderRadius.all(Radius.circular(10),)
                  ),
                  labelText: 'Enter your Password',
                  labelStyle: TextStyle(
                      color: Color(0xff74369a),
                    ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color(0xfff8edff),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2,
                        color: Color(0xff74369a),),
                    borderRadius: BorderRadius.all(Radius.circular(10),)
                  ),
                  labelText: 'Confirm Password',
                  labelStyle: TextStyle(
                    color: Color(0xff74369a),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
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
                          MaterialPageRoute(builder: (context) => const profile_main()),
                        );
                      },
                      child: Text('Register'),
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
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              margin:  EdgeInsets.all(10),
              alignment: Alignment.center,
              child:
              Row(
                crossAxisAlignment:  CrossAxisAlignment.center,
                children:  [
                  Container(
                    width:  170,
                    height:  3,
                    decoration:  BoxDecoration (
                      color:  Color(0x7f461667),
                    ),
                  ),
                  SizedBox(
                    width:  25,
                  ),
                  Text(
                    'OR',
                    style:  GoogleFonts.poppins (
                      fontSize:  20,
                      fontWeight:  FontWeight.w400,
                      height:  1.1725,
                      color:  Color(0xff461667),
                    ),
                  ),
                  SizedBox(
                    width:  25,
                  ),
                  Container(
                    width:  170,
                    height:  3,
                    decoration:  BoxDecoration (
                      color:  Color(0x7f461667),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin:  EdgeInsets.fromLTRB(56.5, 0, 58.5, 0),
              child:
              Center(
                  child:
                  SizedBox(
                    width: 225,
                    height: 60,
                    child:
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const connectWith()),
                        );
                      },
                      icon: Image.asset('assets/images/icon_button.png'),
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: Color(0xff74369a),
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontStyle: FontStyle.normal),
                      ), label: Text(''),
                    ),
                  )
              ),
            ),


            Row(
              children: <Widget>[
                const Text('Already have an account?'),
                TextButton(
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 20,
                      color:  Color(0xffe94560), ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const login()),
                    );
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),





          ],

        ),
      ),
    );
  }
}
