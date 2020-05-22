import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

void CustomAlertDialog(BuildContext context, String title, String warningText, String gambar) {
  var width = MediaQuery.of(context).size.width;
  var height = MediaQuery.of(context).size.height;
  Dialog alertDialog = Dialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(0.0),
    ),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0.0),
      ),
      height: height*0.25,
      width: width*0.3,
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
                      Image.asset('assets/images/${gambar}.png'),
                      SizedBox(width: 4.0,),
                      Text(
                        title,
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
              height: height*0.25 - 35,
              color: Color(0xffC0C0C0),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.warning, color: Colors.yellowAccent, size: 24,),
                      SizedBox(width: 8.0,),
                      Text(warningText, style: GoogleFonts.vt323(
                        fontSize: 16.0,
                      ),),
                    ],
                  ),
                  SizedBox(height: 24,),
                  OutlineButton(
                    onPressed: (){ Navigator.pop(context); },
                    child: Text("Ok", style: GoogleFonts.vt323(
                      fontSize: 16.0,
                    ),),
                    textColor: Colors.black,
                    splashColor: Colors.grey,
                    borderSide: BorderSide(
                      color: Colors.black, //Color of the border
                      style: BorderStyle.solid, //Style of the border
                      width: 1.0, //width of the border
                    ),
                    color: Color(0xFFDBDBDB),
                  ),
                ],
              ),
          ),
        ],
      ),
    ),
  );
  showDialog(
      context: context, builder: (BuildContext context) => alertDialog);
}