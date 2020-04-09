import 'package:flutter/material.dart';
import 'package:morrocovid/services/item.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:morrocovid/services/bouncyEffect.dart';
import 'package:morrocovid/pages/subpages/protectionPages/precautions.dart';
import 'package:morrocovid/pages/subpages/protectionPages/danger.dart';
import 'package:morrocovid/pages/subpages/protectionPages/lifespan.dart';
import 'package:morrocovid/pages/subpages/protectionPages/syptoms.dart';

class Protect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Items item0 = new Items(
      title: "أعراض الفيروس",
      subtitle: 'اضغط هنا',
      img: "assets/protection/syptom.png",
      widget: Symptom(),
    );

    Items item1 = new Items(
      title: "مدة عيش الفيروس",
      subtitle: "اضغط هنا",
      img: "assets/protection/water.png",
      widget: Lifespan(),
    );

    Items item2 = new Items(
        title: " الاحتياطات الضرورية",
        subtitle: "اضغط هنا",
        img: "assets/protection/precaution.png",
        widget: Precautions());
    Items item3 = new Items(
      title: "الفئة المعرضة للخطر",
      subtitle: "اضغط هنا",
      img: "assets/protection/coronavirus.png",
      widget: Danger(),
    );

    List<Items> myList = [item0, item1, item2, item3];

    return Scaffold(
      appBar: AppBar(
        title: Text('أحمي نفسي'),
        backgroundColor: Colors.yellow[700],
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Image.asset('assets/doctorP.png',
              height: 200, width: double.infinity),
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
                        SizedBox(height: 8),
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
                        Flexible(
                          child: ButtonTheme(
                            minWidth: 80.0,
                            height: 1.0,
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  BouncyEffect(widget: data.widget),
                                );
                              },
                              child: Text(
                                data.subtitle,
                                style: GoogleFonts.openSans(
                                    textStyle: TextStyle(
                                        color: Colors
                                            .white, //Color.fromRGBO(80, 101, 127, 1),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600)),
                              ),
                              color: Colors.blue[300],
                            ),
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
