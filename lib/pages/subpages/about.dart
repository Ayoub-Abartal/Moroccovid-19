import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:morrocovid/services/item.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Items item0 = new Items(
      title: " الاسم الكامل",
      subtitle: "ابرطال أيوب",
      img: "assets/about/user.png",
      fs: 13,
    );

    Items item1 = new Items(
      title: "البريد الالكتروني  ",
      subtitle: "abaayoub8@gmail.com",
      img: "assets/about/arroba.png",
      fs: 10,
    );

    Items item2 = new Items(
      title: "رقم الهاتف ",
      subtitle: "0614825304",
      img: "assets/about/phone-call.png",
      fs: 13,
    );

    Items item3 = new Items(
      title: "مطور تطبيقات الهاتف",
      subtitle: "",
      img: "assets/about/mobile.png",
      fs: 13,
    );

    Items item4 = new Items(
      title: "مطور تطبيقات الويب",
      subtitle: "",
      img: "assets/about/web.png",
      fs: 13,
    );
    Items item5 = new Items(
      title: " Github ",
      subtitle: "www.github.com/Ayoub-Abartal",
      img: "assets/about/github.png",
      fs: 8,
    );

    List<Items> myList = [item0, item1, item2, item5, item3, item4];

    return Scaffold(
        appBar: AppBar(
          title: Text('عن المطور'),
          backgroundColor: Colors.indigo,
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Center(
              child: Image.asset(
                'assets/developper.png',
                height: 200,
                width: double.infinity,
              ),
            ),
            Flexible(
              child: GridView.count(
                  childAspectRatio: 1.0,
                  padding: EdgeInsets.only(left: 16, right: 16),
                  crossAxisCount: 2,
                  crossAxisSpacing: 18,
                  mainAxisSpacing: 18,
                  children: myList.map((data) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(height: 12),
                          Center(
                            child: Image.asset(
                              data.img,
                              width: 70,
                              height: 70,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Center(
                            child: Text(
                              data.title,
                              style: GoogleFonts.openSans(
                                  textStyle: TextStyle(
                                      color: Colors
                                          .white, //Color.fromRGBO(80, 101, 127, 1),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600)),
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            child: Center(
                              child: Text(
                                data.subtitle,
                                style: GoogleFonts.openSans(
                                    textStyle: TextStyle(
                                        color: Colors.grey[
                                            200], //Color.fromRGBO(80, 101, 127, 1),
                                        fontSize: data.fs,
                                        fontWeight: FontWeight.w600)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList()),
            ),
             SizedBox(height:8),
          ],
        ));
  }
}
