import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

void SekolahDialog(BuildContext context, String linkGambar, String namaSekolah, String detail) {
  var width = MediaQuery.of(context).size.width;
  var height = MediaQuery.of(context).size.height;
  Dialog sekolahDialog = Dialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(0.0),
    ),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0.0),
      ),
      height: height*0.75,
      width: width*0.5,
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
                      Image.asset('assets/images/education.png'),
                      SizedBox(width: 4.0,),
                      Text(
                        namaSekolah,
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
                      child: Icon(Icons.close,),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: height*0.75 - 35,
            width: width*0.5,
            color: Color(0xffC0C0C0),
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Stack(
              children: [
                Image.network(linkGambar, fit: BoxFit.fill, width: width*0.5, height: height*0.75-35,),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    color: Colors.black45,
                    padding: EdgeInsets.all(16),
                    child: Text(detail, style: GoogleFonts.vt323(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,),
                  ),
                ),
              ],
            )
          )
        ],
      ),
    ),
  );
  showDialog(
      context: context, builder: (BuildContext context) => sekolahDialog);
}