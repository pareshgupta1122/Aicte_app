import 'package:aicte_app/HomeScreen.dart';
import 'package:aicte_app/bureaus.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';

import 'constraints.dart';
class NewsRoom extends StatefulWidget {
  const NewsRoom({Key? key}) : super(key: key);

  @override
  State<NewsRoom> createState() => _NewsRoomState();
}

class _NewsRoomState extends State<NewsRoom> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: HexColor("#E5E5E5"),
      body: Column(

        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.black,

              child:Column(

                children: [
                  SizedBox(height: SizeConfig.deviceHeight*0.03),
                  Row(

                    children: [

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(DateFormat.yMMMEd().format(DateTime.now()),style: GoogleFonts.inter(color:Colors.white,fontSize:SizeConfig.deviceHeight*0.014)),
                            Text(DateFormat('-hh:mm:ss').format(DateTime.now()),style: GoogleFonts.inter(color:Colors.white,fontSize:SizeConfig.deviceHeight*0.014)),


                          ],
                        ),

                      ),
                      //SizedBox(width: SizeConfig.deviceWidth*0.1),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35,0,8,8),
                        child: Row(
                          children: [
                            Icon(Icons.volume_up_sharp,color: HexColor('#F8AA37'),),
                            Text("Screen Reader",style: GoogleFonts.inter(color:Colors.white,fontSize:SizeConfig.deviceHeight*0.014)),


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
                            Text("Text Size  A- A A+",style: GoogleFonts.inter(color:Colors.white,fontSize:SizeConfig.deviceHeight*0.014)),



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
                              child: Text("Hindi",style: GoogleFonts.inter(color:Colors.white,fontSize:SizeConfig.deviceHeight*0.014)),
                            ),
                            Container(color: HexColor('#F8AA37'),
                                child: Row(
                                  children: [
                                    Icon(Icons.person,color: Colors.black,),
                                    Text("Web Portal Login ",style: GoogleFonts.inter(color:Colors.white,fontSize:SizeConfig.deviceHeight*0.014)),
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
          ),

          Expanded(
            flex: 5,
            child: Container(
              child: SingleChildScrollView(

                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(

                              width: SizeConfig.deviceWidth*0.1,
                              child: Image.asset('assets/aictelogo.png',)),
                          SizedBox(width: SizeConfig.deviceWidth*0.01),
                          Text('All India Council For Technical Education',style: GoogleFonts.inter(color:Colors.black,fontSize:SizeConfig.deviceHeight*0.015 )),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                        child: Text("MENU",style: GoogleFonts.inter(color:Colors.black,fontWeight: FontWeight.bold ))),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("NEWS ROOM",style: GoogleFonts.inter(color:Colors.black ,fontWeight: FontWeight.bold)),
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

                          Text("News",style: GoogleFonts.inter(color:Colors.black )),
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

                          Text("Press Release",style: GoogleFonts.inter(color:Colors.black )),
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

                          Text("Image Gallery",style: GoogleFonts.inter(color:Colors.black )),
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

                          Text("Video Gallery",style: GoogleFonts.inter(color:Colors.black )),
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

                          Text("Events",style: GoogleFonts.inter(color:Colors.black )),
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
                            Navigator.push(context,MaterialPageRoute(builder:(context)=>HomePage()));
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
                            Navigator.push(context,MaterialPageRoute(builder:(context)=>Buewaus()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Next",style: GoogleFonts.inter(color:Colors.white )),
                          ),
                        ),
                      ],
                    )
                  ],),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
