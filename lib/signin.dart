import 'package:aicte_app/HomeScreen.dart';
import 'package:aicte_app/constraints.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:shared_preferences/shared_preferences.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // for email text field controller
  final TextEditingController _emailcontroller = TextEditingController();
  late SharedPreferences prefs;
  void pref()async {
    prefs= await SharedPreferences.getInstance();
  }

  // for password text field controller
  final TextEditingController _passwordcontroller = TextEditingController();
  bool isHiddenPassword = true;
  late FocusNode _myFocusNodeEmail;
  late FocusNode _myFocusNodePassword;
  @override
  void initState() {
    super.initState();
    pref();

    _myFocusNodeEmail = FocusNode();
    _myFocusNodeEmail.addListener(() {
      setState(() {});
    });

    _myFocusNodePassword = FocusNode();
    _myFocusNodePassword.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    _myFocusNodeEmail.removeListener(() {});
    _myFocusNodeEmail.dispose();

    _myFocusNodePassword.removeListener(() {});
    _myFocusNodePassword.dispose();
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: HexColor('#E5E5E5'),
        body:Column(
          children: [
            SizedBox(height:SizeConfig.deviceHeight*0.06),
            Column(
                children:[
                  SizedBox(height:SizeConfig.deviceHeight*0.03),
                  Text('SIGN IN',style:GoogleFonts.inknutAntiqua(color:Color.fromRGBO(4, 22, 48, 1),fontSize: SizeConfig.deviceHeight*0.035


                  )),
                  SizedBox(height:SizeConfig.deviceHeight*0.06),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(

                      controller:_emailcontroller,
                      cursorColor:Color.fromRGBO(4, 22, 48, 1),
                      focusNode: _myFocusNodeEmail,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email,color:_myFocusNodeEmail.hasFocus?Color.fromRGBO(4, 22, 48, 1):HexColor('#686B60')),

                        labelText: "Enter email",
                        labelStyle: GoogleFonts.inter(color:_myFocusNodeEmail.hasFocus?Color.fromRGBO(4, 22, 48, 1):HexColor('#686B60')),
                        fillColor:HexColor('#B4B5BD'),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide: BorderSide(
                            color:HexColor('#B4B5BD') ,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide: BorderSide(
                            color: HexColor('#B4B5BD'),
                            width: 1.0,
                          ),
                        ),
                      ),
                      validator: (val) {
                        if (val?.length == 0) {
                          return "Email cannot be empty";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.emailAddress,
                      style: GoogleFonts.inter(),
                    ),
                  ),
                  SizedBox(height:SizeConfig.deviceHeight*0.02),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: _passwordcontroller,
                      obscureText: isHiddenPassword,
                      cursorColor: Color.fromRGBO(4, 22, 48, 1),
                      focusNode: _myFocusNodePassword,
                      decoration: InputDecoration(

                        prefixIcon: Icon(Icons.lock,color:_myFocusNodePassword.hasFocus?Color.fromRGBO(4, 22, 48, 1):HexColor('#686B60')),
                        suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                isHiddenPassword = !isHiddenPassword;
                              });
                            },
                            child: isHiddenPassword?(Icon(Icons.visibility_off,color:_myFocusNodePassword.hasFocus?Color.fromRGBO(4, 22, 48, 1):Colors.grey )):(Icon(Icons.visibility,color:_myFocusNodePassword.hasFocus?Color.fromRGBO(4, 22, 48, 1):Colors.grey ))
                        ),

                        labelText: "Enter Password",
                        labelStyle: GoogleFonts.inter(color:_myFocusNodePassword.hasFocus?Color.fromRGBO(4, 22, 48, 1):HexColor('#686B60')),
                        fillColor:HexColor('#B4B5BD'),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide: BorderSide(
                            color:HexColor('#B4B5BD') ,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide: BorderSide(
                            color: HexColor('#B4B5BD'),
                            width: 1.0,
                          ),
                        ),
                      ),
                      validator: (val) {
                        if (val?.length == 0) {
                          return "Password cannot be empty";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.text,
                      style: GoogleFonts.signika(),
                    ),
                  ),
                  Align(alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: InkWell(
                            onTap: (){},
                            child: Text('Forget Password ?',style: GoogleFonts.inter(color:HexColor('#686B60') ),)),
                      )),
                  SizedBox(height:SizeConfig.deviceHeight*0.04),
                  InkWell(
                    onTap:(){
                      setState(() {
                        prefs.setString('name', _emailcontroller.text);
                      });
                      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>HomePage()));

                    },
                    child: Container(
                        height: SizeConfig.deviceHeight*0.06,
                        width:SizeConfig.deviceWidth*0.95,
                        decoration: BoxDecoration(
                            color:HexColor('#081A2F'),
                            borderRadius: BorderRadius.all((Radius.circular(20)))
                        ),
                        child:Center(child: Text('Sign In',style:GoogleFonts.signika(color:Colors.white,fontSize:SizeConfig.deviceHeight*0.02,fontWeight: FontWeight.bold)))
                    ),
                  ),
                  SizedBox(height:SizeConfig.deviceHeight*0.01),
                  InkWell(
                      onTap: (){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('New User?',style: GoogleFonts.inter(color:HexColor('#686B60') ),),
                          Text('Sign In',style: GoogleFonts.inter(color:HexColor('#686B60'),fontWeight: FontWeight.bold ),),
                        ],
                      )),
                ]
            ),
            SizedBox(height:SizeConfig.deviceHeight*0.1),


          ],
        )
    );
  }
}
