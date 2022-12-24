import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_builder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import 'login.dart';


class connectWith extends StatefulWidget {
  const connectWith({Key? key}) : super(key: key);

  @override
  State<connectWith> createState() => _connectWithState();
}

class _connectWithState extends State<connectWith> {

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff461667),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.bottomCenter,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.80,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Form(
                  key: formKey,
                  child: Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InternationalPhoneNumberInput(
                            onInputChanged: (PhoneNumber number){
                              print(number.phoneNumber);
                            },
                          onInputValidated: (bool value) {
                            print(value);
                          },
                          selectorConfig: SelectorConfig(
                            selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                          ),
                          ignoreBlank: false,
                          autoValidateMode: AutovalidateMode.disabled,
                          selectorTextStyle: TextStyle(color: Colors.white),
                          initialValue: number,
                          textFieldController: controller,
                          formatInput: false,
                          keyboardType:
                          TextInputType.numberWithOptions(signed: true, decimal: true),
                          inputDecoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0x4cffffff),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 3,
                                  color: Color(0xff74369a),),
                                borderRadius: BorderRadius.all(Radius.circular(10),)
                            ),
                          ),
                          onSaved: (PhoneNumber number) {
                            print('On Saved: $number');
                          },
                        )
                      ],
                    ),

                  )
              ),
              Positioned(
                bottom: 0,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.65,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(45),
                        topRight: Radius.circular(45),
                      ),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SignInButton(
                              Buttons.Google,
                              text: "Connect with Google",
                              onPressed: (){},
                          ),
                          Divider(),
                          SignInButton(
                            Buttons.AppleDark,
                            text: "Connect with Apple",
                            onPressed: (){},
                          ),
                          Divider(),
                          SignInButton(
                            Buttons.Facebook,
                            text: "Connect with Facebook",
                            onPressed: (){},
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
                  )),
            ],
          ),


        ),

      ),
    );
  }
}
