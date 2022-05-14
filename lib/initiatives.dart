import 'package:aicte_app/Initiative2.dart';
import 'package:aicte_app/bureaus.dart';
import 'package:aicte_app/constraints.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';

class Initiative extends StatefulWidget {
  const Initiative({Key? key}) : super(key: key);

  @override
  State<Initiative> createState() => _InitiativeState();
}

class _InitiativeState extends State<Initiative> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: HexColor("#E5E5E5"),
      body: Column(

        children: [
          Container(
            color: Colors.black,

            child:Column(

              children: [
                Row(

                  children: [

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(DateFormat.yMMMEd().format(DateTime.now()),style: GoogleFonts.inter(color:Colors.white)),
                          Text(DateFormat('-hh:mm:ss').format(DateTime.now()),style: GoogleFonts.inter(color:Colors.white)),


                        ],
                      ),

                    ),
                    //SizedBox(width: SizeConfig.deviceWidth*0.1),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(45,0,8,8),
                      child: Row(
                        children: [
                          Icon(Icons.volume_up_sharp,color: HexColor('#F8AA37'),),
                          Text("Screen Reader",style: GoogleFonts.inter(color:Colors.white)),


                        ],
                      ),

                    ),
                  ],
                ),
                Row(

                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: [
                          Text("Text Size  A- A A+",style: GoogleFonts.inter(color:Colors.white)),



                        ],
                      ),
                    ),
                    //SizedBox(width: SizeConfig.deviceWidth*0.1),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(55,0,8,8),
                      child: Row(

                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text("Hindi",style: GoogleFonts.inter(color:Colors.white)),
                          ),
                          Container(color: HexColor('#F8AA37'),
                              child: Row(
                                children: [
                                  Icon(Icons.person,color: Colors.black,),
                                  Text("Web Portal Login ",style: GoogleFonts.inter(color:Colors.white)),
                                ],
                              )
                          ),



                        ],
                      ),

                    ),
                  ],
                ) ,

                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(color: HexColor("#E5E5E5"),
                          child: Row(
                            children: [
                              Icon(Icons.facebook_rounded,color: Colors.black,),
                              FaIcon(FontAwesomeIcons.twitter,color: Colors.black,),
                              FaIcon(FontAwesomeIcons.instagram,color: Colors.black,)

                            ],
                          )),
                    ),
                  ],
                ),

              ],
            ) ,

          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(

                    width: SizeConfig.deviceWidth*0.1,
                    child: Image.asset('aictelogo.png',)),
                SizedBox(width: SizeConfig.deviceWidth*0.01),
                Text('All India Council For Technical Education',style: GoogleFonts.inter(color:Colors.black, )),
              ],
            ),
          ),
          Text("MENU",style: GoogleFonts.inter(color:Colors.black,fontWeight: FontWeight.bold )),
          Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("INITIATIVES",style: GoogleFonts.inter(color:Colors.black,fontWeight: FontWeight.bold )),
                    Text("Overview",style: GoogleFonts.inter(color:Colors.black )),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(


                  cursorColor:Color.fromRGBO(4, 22, 48, 1),

                  decoration: InputDecoration(




                    fillColor:HexColor('#B4B5BD'),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color:HexColor('#B4B5BD') ,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: HexColor('#B4B5BD'),
                        width: 1.0,
                      ),
                    ),
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text("Smart India Hackathon",style: GoogleFonts.inter(color:Colors.black )),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(


                  cursorColor:Color.fromRGBO(4, 22, 48, 1),

                  decoration: InputDecoration(




                    fillColor:HexColor('#B4B5BD'),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color:HexColor('#B4B5BD') ,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: HexColor('#B4B5BD'),
                        width: 1.0,
                      ),
                    ),
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text("SWAYAM",style: GoogleFonts.inter(color:Colors.black )),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(


                  cursorColor:Color.fromRGBO(4, 22, 48, 1),

                  decoration: InputDecoration(




                    fillColor:HexColor('#B4B5BD'),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color:HexColor('#B4B5BD') ,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: HexColor('#B4B5BD'),
                        width: 1.0,
                      ),
                    ),
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text("AICTE-Cll India Innovation Initiative",style: GoogleFonts.inter(color:Colors.black )),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(


                  cursorColor:Color.fromRGBO(4, 22, 48, 1),

                  decoration: InputDecoration(




                    fillColor:HexColor('#B4B5BD'),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color:HexColor('#B4B5BD') ,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: HexColor('#B4B5BD'),
                        width: 1.0,
                      ),
                    ),
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text("Clean & Smart Campus Award",style: GoogleFonts.inter(color:Colors.black )),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(


                  cursorColor:Color.fromRGBO(4, 22, 48, 1),

                  decoration: InputDecoration(




                    fillColor:HexColor('#B4B5BD'),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color:HexColor('#B4B5BD') ,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: HexColor('#B4B5BD'),
                        width: 1.0,
                      ),
                    ),
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text("Startup Contest",style: GoogleFonts.inter(color:Colors.black )),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(


                  cursorColor:Color.fromRGBO(4, 22, 48, 1),

                  decoration: InputDecoration(




                    fillColor:HexColor('#B4B5BD'),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color:HexColor('#B4B5BD') ,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: HexColor('#B4B5BD'),
                        width: 1.0,
                      ),
                    ),
                  ),

                ),
              ),

              SizedBox(height: SizeConfig.deviceHeight*0.08,),
              Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: HexColor('#081A2F'),
                    ),
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder:(context)=>Buewaus()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Previous",style: GoogleFonts.inter(color:Colors.white )),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: HexColor('#081A2F'),
                    ),
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder:(context)=>Initiative2()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Next",style: GoogleFonts.inter(color:Colors.white )),
                    ),
                  ),
                ],
              )
            ],),
        ],
      ),
    );
  }
}
