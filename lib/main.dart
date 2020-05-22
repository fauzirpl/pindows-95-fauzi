import 'dart:async';

import 'package:Website_Fauzi/utils/alert.dart';
import 'package:Website_Fauzi/utils/education.dart';
import 'package:Website_Fauzi/utils/my_computer_box.dart';
import 'package:Website_Fauzi/utils/portofolio.dart';
import 'package:Website_Fauzi/utils/stats.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'utils/responsiveLayout.dart';

void main() => runApp(MaterialApp(
  title: 'Website Fauzi',
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    primarySwatch: Colors.blue,
  ),
  home: HomePage(),
));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFF018281),
            Color(0xFF018281),
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[Body()],
          ),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: LargeChild(),
      smallScreen: SmallChild(),
    );
  }
}

class LargeChild extends StatefulWidget {
  @override
  _LargeChildState createState() => _LargeChildState();
}

class _LargeChildState extends State<LargeChild> {  String _timeString;

@override
void initState() {
  _timeString = _formatDateTime(DateTime.now());
  Timer.periodic(Duration(seconds: 1), (Timer t) => _getTime());
  super.initState();
}

void _getTime() {
  final DateTime now = DateTime.now();
  final String formattedDateTime = _formatDateTime(now);
  setState(() {
    _timeString = formattedDateTime;
  });
}

String _formatDateTime(DateTime dateTime) {
  return DateFormat('h:mm a').format(dateTime);
}

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: height*0.95,
          child: Container(
            padding: EdgeInsets.fromLTRB(16.0, 8.0, 0, 0),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    MyComputerDialog(context);
                  },
                  child: Image.asset("assets/images/mycomputer.png"),
                ),
                Text("My Computer", style: GoogleFonts.vt323(
                  fontSize: 14.0,
                  color: Colors.white,
                ),),
                SizedBox(height: 16.0,),
                InkWell(
                  onTap: () {
                    EducationDialog(context);
                  },
                  child: Image.asset("assets/images/education.png"),
                ),
                Text("Education", style: GoogleFonts.vt323(
                  fontSize: 14.0,
                  color: Colors.white,
                ),),
                SizedBox(height: 16.0,),
                InkWell(
                  onTap: () {
                    StatusDialog(context);
                  },
                    child: Image.asset("assets/images/file.png")),
                Text("Skill Stats", style: GoogleFonts.vt323(
                  fontSize: 14.0,
                  color: Colors.white,
                ),),
                SizedBox(height: 16.0,),
                InkWell(
                    onTap: () {
                      PortofolioDialog(context);
                    },
                    child: Image.asset("assets/images/folder.png")),
                Text("Portofolio", style: GoogleFonts.vt323(
                  fontSize: 14.0,
                  color: Colors.white,
                ),),
                SizedBox(height: 16.0,),
                InkWell(
                  onTap: () {
                    CustomAlertDialog(context, "Warning", "Mengenang masa lalu akan turut membuka luka yang dahulu.", 'bin');
                  },
                  child: Image.asset("assets/images/bin.png"),),
                Text("Masa Lalu", style: GoogleFonts.vt323(
                  fontSize: 14.0,
                  color: Colors.white,
                ),),
                SizedBox(height: 16.0,),
              ],
            ),
          ),
        ),
        Container(
          height: height*0.05,
          padding: EdgeInsets.all(4.0),
          color: Color(0XFFc7c7c7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OutlineButton(
                onPressed: (){
                  CustomAlertDialog(context, "Information", "Made with <3 by Fauzi", 'start');
                },
                child: Row(
                  children: [
                    Image.asset("assets/images/start.png"),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text("Start", style: GoogleFonts.vt323(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    )),
                  ],
                ),
                textColor: Colors.black,
                splashColor: Colors.grey,
                borderSide: BorderSide(
                  color: Colors.black, //Color of the border
                  style: BorderStyle.solid, //Style of the border
                  width: 1.0, //width of the border
                ),
                color: Color(0xFFDBDBDB),
              ),
              Container(
                padding: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1.0),
                ),
                child: Text(_timeString, style: GoogleFonts.vt323(fontSize: 16.0,),),
              )
            ],
          ),
          alignment: Alignment(0.0, 1.0),
        ),
      ],
    );
  }
}

class SmallChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Center(
        child: Container(
          height: height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("For Better Experience Open Only On Desktop Mode", style: GoogleFonts.vt323(fontSize: 32.0,),),
            ],
          ),
        ),
      ),
    );
  }
}