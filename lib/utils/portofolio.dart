import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:js' as js;

class Porto {
  String img;
  String desc;
  String link;
  Porto(this.img, this.desc, this.link);
}

void PortofolioDialog(BuildContext context) {
  List<Porto> list = [Porto("https://imgur.com/cs1BDQ5.png", "e-Resto Jograng\nWeb Developer", "http://jograngcafe.com"), Porto("https://imgur.com/yh2y61A.png", "Web Dinas Perkimtan Bengkalis\nWeb Developer", "http://perkimtan.bengkaliskab.go.id"), Porto("https://imgur.com/LEp0qrU.png", "Sistem Peminjaman & Perawatan Inventaris Lab\nWeb Developer", "http://sislabti.herokuapp.com"), Porto("https://imgur.com/T1pIdOl.png", "Game Watchout Ricardo!\nGame Nirfaedah 5k Download :D", "https://play.google.com/store/apps/details?id=com.mfauzi.watchoutricardo&hl=in"), Porto("https://imgur.com/KUVUe4s.png", "Monitoring Kebakaran(Ongoing)\nFull Stack Developer", "https://www.google.com/search?safe=strict&sxsrf=ALeKk00JGEosnryQidV1CpViuNnDR-FtdA%3A1590167641174&source=hp&ei=WQjIXpvYCIOprtoPj7qBCA&q=arti+ongoing&oq=arti+ongoing&gs_lcp=CgZwc3ktYWIQAzIHCAAQRhD_ATICCAAyAggAMgYIABAWEB4yBggAEBYQHjIICAAQFhAKEB4yBggAEBYQHjIGCAAQFhAeMgYIABAWEB4yBggAEBYQHjoECCMQJzoECAAQQzoFCAAQgwE6BwgjEOoCECc6CQgAEEMQRhD_AToHCAAQgwEQQzoFCAAQywE6BAgAEApQpA5YoC1g8y9oAXAAeACAAc0BiAHKDpIBBjAuMTIuMZgBAKABAaoBB2d3cy13aXqwAQo&sclient=psy-ab&ved=0ahUKEwjb6IiL_MfpAhWDlEsFHQ9dAAEQ4dUDCAY&uact=5")];
  var width = MediaQuery.of(context).size.width;
  var height = MediaQuery.of(context).size.height;
  Dialog portofolioDialog = Dialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(0.0),
    ),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0.0),
      ),
      height: height * 0.75,
      width: width * 0.6,
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
                      Image.asset('assets/images/media.png'),
                      SizedBox(
                        width: 4.0,
                      ),
                      Text(
                        "Media Player - Portofolio SLide",
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
            width: width * 0.6,
            color: Color(0xffC0C0C0),
            padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
            child: CarouselSlider(
              options: CarouselOptions(),
              items: list
                  .map((item) => Container(
                        child: Center(
                            child: Stack(
                          children: [
                            InkWell(
                              onTap: () {
                                js.context.callMethod("open", [item.link]);
                              },
                              child: Image.network(
                                item.img,
                                fit: BoxFit.fill,
                                width: width * 0.5,
                                height: height * 0.75 - 35,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                color: Colors.black45,
                                padding: EdgeInsets.all(16),
                                child: Text(
                                  item.desc,
                                  style: GoogleFonts.vt323(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        )),
                        color: Colors.white,
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    ),
  );
  showDialog(
      context: context, builder: (BuildContext context) => portofolioDialog);
}
