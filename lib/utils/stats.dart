import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fl_chart/fl_chart.dart';

void StatusDialog(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  var height = MediaQuery.of(context).size.height;
  Dialog statsDialog = Dialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(0.0),
    ),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0.0),
      ),
      height: height*0.8,
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
                      Image.asset('assets/images/file.png'),
                      SizedBox(width: 4.0,),
                      Text(
                        "Macrosoft Worth - My Top 5 Skills",
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
            height: 35,
            color: Color(0xffC0C0C0),
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("File", style: GoogleFonts.vt323(
                  fontSize: 16.0,
                ),),
                SizedBox(width: 4,),
                Text("Edit", style: GoogleFonts.vt323(
                  fontSize: 16.0,
                ),),
                SizedBox(width: 4,),
                Text("View", style: GoogleFonts.vt323(
                  fontSize: 16.0,
                ),),
                SizedBox(width: 4,),
                Text("Insert", style: GoogleFonts.vt323(
                  fontSize: 16.0,
                ),),
                SizedBox(width: 4,),
                Text("Format", style: GoogleFonts.vt323(
                  fontSize: 16.0,
                ),),
                SizedBox(width: 4,),
                Text("Tools", style: GoogleFonts.vt323(
                  fontSize: 16.0,
                ),),
                SizedBox(width: 4,),
                Text("Table", style: GoogleFonts.vt323(
                  fontSize: 16.0,
                ),),
                SizedBox(width: 4,),
                Text("Window", style: GoogleFonts.vt323(
                  fontSize: 16.0,
                ),),
                SizedBox(width: 4,),
                Text("Help", style: GoogleFonts.vt323(
                  fontSize: 16.0,
                ),),
                SizedBox(width: 4,),
              ],
            ),
          ),
          Container(
            height: height*0.8 - 70,
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
              AspectRatio(
              aspectRatio: 2,
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                color: const Color(0xff2c4260),
                child: BarChart(
                  BarChartData(
                    alignment: BarChartAlignment.spaceAround,
                    maxY: 10,
                    barTouchData: BarTouchData(
                      enabled: false,
                      touchTooltipData: BarTouchTooltipData(
                        tooltipBgColor: Colors.transparent,
                        tooltipPadding: const EdgeInsets.all(0),
                        tooltipBottomMargin: 8,
                        getTooltipItem: (
                            BarChartGroupData group,
                            int groupIndex,
                            BarChartRodData rod,
                            int rodIndex,
                            ) {
                          return BarTooltipItem(
                            rod.y.round().toString(),
                            TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          );
                        },
                      ),
                    ),
                    titlesData: FlTitlesData(
                      show: true,
                      bottomTitles: SideTitles(
                        showTitles: true,
                        textStyle: GoogleFonts.vt323(
                            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
                        margin: 20,
                        getTitles: (double value) {
                          switch (value.toInt()) {
                            case 0:
                              return 'Kotlin';
                            case 1:
                              return 'Laravel';
                            case 2:
                              return 'Flutter';
                            case 3:
                              return 'PHP Native';
                            case 4:
                              return 'Javascript';
                            default:
                              return '';
                          }
                        },
                      ),
                      leftTitles: SideTitles(showTitles: false),
                    ),
                    borderData: FlBorderData(
                      show: false,
                    ),
                    barGroups: [
                      BarChartGroupData(
                          x: 0,
                          barRods: [BarChartRodData(y: 6, color: Colors.lightBlueAccent)],
                          showingTooltipIndicators: [0]),
                      BarChartGroupData(
                          x: 1,
                          barRods: [BarChartRodData(y: 8, color: Colors.lightBlueAccent)],
                          showingTooltipIndicators: [0]),
                      BarChartGroupData(
                          x: 2,
                          barRods: [BarChartRodData(y: 6, color: Colors.lightBlueAccent)],
                          showingTooltipIndicators: [0]),
                      BarChartGroupData(
                          x: 3,
                          barRods: [BarChartRodData(y: 8.5, color: Colors.lightBlueAccent)],
                          showingTooltipIndicators: [0]),
                      BarChartGroupData(
                          x: 4,
                          barRods: [BarChartRodData(y: 7, color: Colors.lightBlueAccent)],
                          showingTooltipIndicators: [0]),
                    ],
                  ),
                ),
              ),
            ),

                SizedBox(height: 24,),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.info, color: Colors.yellowAccent, size: 24,),
                    SizedBox(width: 8.0,),
                    Text("Max Point = 10", style: GoogleFonts.vt323(
                      fontSize: 16.0,
                    ),),
                  ],
                ),
                SizedBox(height: 24,),
              ],
            ),
          ),
        ],
      ),
    ),
  );
  showDialog(
      context: context, builder: (BuildContext context) => statsDialog);
}