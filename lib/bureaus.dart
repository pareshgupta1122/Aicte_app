import 'package:aicte_app/initiatives.dart';
import 'package:aicte_app/news_room.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';

import 'constraints.dart';

class Buewaus extends StatefulWidget {
  const Buewaus({Key? key}) : super(key: key);

  @override
  State<Buewaus> createState() => _BuewausState();
}

class _BuewausState extends State<Buewaus> {
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
                    Text("BUREAUS",style: GoogleFonts.inter(color:Colors.black,fontWeight: FontWeight.bold )),
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

                    Text("Approval",style: GoogleFonts.inter(color:Colors.black )),
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

                    Text("Policy",style: GoogleFonts.inter(color:Colors.black )),
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

                    Text("Academic Planning",style: GoogleFonts.inter(color:Colors.black )),
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

                    Text("Administration",style: GoogleFonts.inter(color:Colors.black )),
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

                    Text("Cells",style: GoogleFonts.inter(color:Colors.black )),
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
                      Navigator.push(context,MaterialPageRoute(builder:(context)=>NewsRoom()));
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
                      Navigator.push(context,MaterialPageRoute(builder:(context)=>Initiative()));
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
