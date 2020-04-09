import 'package:flutter/material.dart';
import 'package:morrocovid/services/item.dart';
import 'package:google_fonts/google_fonts.dart';

class Danger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Items item0 = new Items(
      title: "المدخنين",
      subtitle: 'ضعف القوى المناعية للشعب الهوائية',
      img: "assets/danger/smoke.png",
      fs: 10,
    );

    Items item1 = new Items(
      title: "ذوي الأمراض المزمنة",
      subtitle: "بسبب مناعتهم المنخفضة",
      img: "assets/danger/hospitalisation.png",
      fs: 14,
    );

    Items item2 = new Items(
      title: " كبار السن",
      subtitle: "(فوق 65 سنة)",
      img: "assets/danger/old.png",
      fs: 14,
    );

    List<Items> myList = [item0, item1, item2];

    return Scaffold(
      appBar: AppBar(
        title: Text(' الفئة المعرضة للخطر'),
        backgroundColor: Colors.yellow[700],
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Image.asset(
            'assets/doctorP.png',
            height: 200,
            width: double.infinity,
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
                      color: Colors.yellow[700],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: Image.asset(
                            data.img,
                            width: 120,
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
                        SizedBox(
                          height: 2,
                        ),
                        Center(
                          child: Text(
                            data.subtitle,
                            style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                    color: Colors.blue[
                                        700], //Color.fromRGBO(80, 101, 127, 1),
                                    fontSize: data.fs,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList()),
          ),
        ],
      ),
    );
  }
}
