import 'package:Website_Fauzi/utils/alert.dart';
import 'package:Website_Fauzi/utils/sekolah.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

void EducationDialog(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  var height = MediaQuery.of(context).size.height;
  Dialog educationDialog = Dialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(0.0),
    ),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0.0),
      ),
      height: height*0.6,
      width: width*0.25,
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
                        "Education & Experiences",
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
            height: height*0.6 - 35,
            color: Color(0xffC0C0C0),
            padding: EdgeInsets.symmetric(horizontal: 4, vertical: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 4, vertical: 16),
                  padding: EdgeInsets.all(16),
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  SekolahDialog(context, "https://koarmada2.tnial.mil.id/wp-content/uploads/2019/08/05-GEDUNG-SDN-DUDUK-SAMPEYAN-KINI-SEMAKIN-BAGUS-SETELAH-SELESAI-DIRENOVASI-SATGAS-ENCAP-LATMA-CARAT-2019.3.jpg", "SDN Duduk Sampeyan - Gresik", "Graduation : 2010");
                                },
                                child: Image.asset("assets/images/SD.png",width: 45,),
                              ),
                              Text("SD (C:)", style: GoogleFonts.vt323(
                                fontSize: 20.0,
                              ),),
                            ],
                          ),
                          SizedBox(width: 24.0,),
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  SekolahDialog(context, "https://lh3.ggpht.com/p/AF1QipOkylZKucM2i3MFn9GNQHcTFxATlxdWyObYh0SA=s1536", "SMPN 4 Bengkalis - Bengkalis", "Graduation : 2013");
                                },
                                child: Image.asset("assets/images/SMP.png",width: 45,),
                              ),
                              Text("SMP (D:)", style: GoogleFonts.vt323(
                                fontSize: 20.0,
                              ),),
                            ],
                          ),
                          SizedBox(width: 24.0,),
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  SekolahDialog(context, "https://www.kampusmelayu.ac.id/wp-content/uploads/2019/10/WhatsApp-Image-2019-10-14-at-10.40.26-1000x500.jpeg", "SMAN 4 Bengkalis - Bengkalis", "Graduation : 2016");
                                },
                                child: Image.asset("assets/images/SMA.png",width: 45,),
                              ),
                              Text("SMA (E:)", style: GoogleFonts.vt323(
                                fontSize: 20.0,
                              ),),
                            ],
                          ),
                          SizedBox(width: 24.0,),
                        ],
                      ),
                      SizedBox(height: 24,),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  SekolahDialog(context, "https://lh3.ggpht.com/p/AF1QipNJnYjOJWjCgIDUzqKZT6YAb19SMASbiTtV17A=s1536", "Politeknik Negeri Bengkalis - Bengkalis", "Graduation : 2020 (Online)");
                                },
                                child: Image.asset("assets/images/KULIAH.png",width: 45,),
                              ),
                              Text("Kuliah (F:)", style: GoogleFonts.vt323(
                                fontSize: 20.0,
                              ),),
                            ],
                          ),
                          SizedBox(width: 24.0,),
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  SekolahDialog(context, "https://i.ibb.co/5v6qYYN/magang.jpg", "Magang : Solusi 247 - Yogyakarta", "Periode : Okt - Des 2019");
                                },
                                child: Image.asset("assets/images/MAGANG.png", width: 45,),
                              ),
                              Text("Magang", style: GoogleFonts.vt323(
                                fontSize: 20.0,
                              ),),
                            ],
                          ),
                          SizedBox(width: 24.0,),
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  CustomAlertDialog(context, "No Access", "Folder is locked, guest cannot open this folder.", 'education');
                                },
                                child: Image.asset("assets/images/folder.png", width: 45,),
                              ),
                              Text("tUgaS KuliAh", style: GoogleFonts.vt323(
                                fontSize: 20.0,
                              ),),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 24,),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  SekolahDialog(context, "https://imgur.com/9Bpl99v.png", "Cloudcode Indonesia - Bengkalis", "Position : Backend Developer -2019");
                                },
                                child: Image.asset("assets/images/KERJA.png",width: 45,),
                              ),
                              Text("Kerja (Z:)", style: GoogleFonts.vt323(
                                fontSize: 20.0,
                              ),),
                            ],
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
      context: context, builder: (BuildContext context) => educationDialog);
}