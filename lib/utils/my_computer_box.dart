import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:js' as js;

void MyComputerDialog(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  var height = MediaQuery.of(context).size.height;
  Dialog myComputerDialog = Dialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(0.0),
    ),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0.0),
      ),
      height: height * 0.75,
      width: width * 0.5,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(4.0),
            width: width,
            height: 35,
            alignment: Alignment.bottomCenter,
            color: Color(0xFF0000FF),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                      Image.asset('assets/images/mycomputer.png'),
                      SizedBox(
                        width: 4.0,
                      ),
                      Text(
                        "My Computer",
                        style: GoogleFonts.vt323(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      color: Color(0xffC0C0C0),
                      child: Icon(
                        Icons.close,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: height * 0.75 - 35,
            color: Color(0xffC0C0C0),
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Text(
                            "Welcome to ",
                            style: GoogleFonts.vt323(
                                color: Colors.black, fontSize: 36),
                          ),
                          Text(
                            "Fauzi ",
                            style: GoogleFonts.vt323(
                                color: Colors.black,
                                fontSize: 36,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "PC",
                            style: GoogleFonts.vt323(
                                color: Colors.white,
                                fontSize: 36,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            js.context.callMethod("open",
                                ["https://www.instagram.com/fauzi_eff/"]);
                          },
                          child: Image.asset(
                            "assets/images/instagram.png",
                            width: 39,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        InkWell(
                          onTap: () {
                            js.context.callMethod("open", [
                              "https://id.linkedin.com/in/muhammad-fauzi-bbbb38170/"
                            ]);
                          },
                          child: Image.asset(
                            "assets/images/linkedin.png",
                            width: 39,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  color: Colors.white,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.lightbulb_outline,
                                color: Colors.yellowAccent,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "Did you know?",
                                style: GoogleFonts.vt323(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                              width: 265,
                              child: Image.network(
                                "http://cloudcode.id/img/team/fauzig.jpg",
                                fit: BoxFit.fill,
                              )),
                        ],
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("About Me",
                              style: GoogleFonts.vt323(
                                  color: Colors.black,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.left),
                          SizedBox(
                            width: width * 0.2,
                            child: Text(
                              "I am a final year student who wants my thesis completed soon. I am proficient in web programming based on the PHP programming language. And now I'm interested in flutter technology.",
                              style: GoogleFonts.vt323(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w100),
                              textAlign: TextAlign.left,
                              overflow: TextOverflow.visible,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text("Full Name : Muhammad Fauzi",
                              style: GoogleFonts.vt323(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300),
                              textAlign: TextAlign.left),
                          Text("Email : fauzijuventini@gmail.com",
                              style: GoogleFonts.vt323(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300),
                              textAlign: TextAlign.left),
                          Text("Profession : College Student",
                              style: GoogleFonts.vt323(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300),
                              textAlign: TextAlign.left),
                          Text("Address : Bengkalis, Riau, Indonesia",
                              style: GoogleFonts.vt323(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300),
                              textAlign: TextAlign.left),
                          SizedBox(
                            width: width * 0.2,
                            child: Text(
                              "Language : English, Indonesian",
                              style: GoogleFonts.vt323(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w100),
                              textAlign: TextAlign.left,
                              overflow: TextOverflow.visible,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.2,
                            child: Text(
                              "Hobby : Watching, Playing Game, Reading, Coding, Culinary",
                              style: GoogleFonts.vt323(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w100),
                              textAlign: TextAlign.left,
                              overflow: TextOverflow.visible,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
  showDialog(
      context: context, builder: (BuildContext context) => myComputerDialog);
}
