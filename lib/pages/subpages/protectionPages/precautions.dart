import 'package:flutter/material.dart';
import 'package:morrocovid/services/item.dart';
import 'package:google_fonts/google_fonts.dart';

class Precautions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Items item0 = new Items(
      title: "  الزام المنزل و عدم  ",
      subtitle: ".الخروج",
      img: "assets/precautions/stay-at-home.png",
      fs: 14,
    );

    Items item1 = new Items(
      title: "فرض الرقابة على صغار ",
      subtitle: ".السن داخل المنزل",
      img: "assets/precautions/boy.png",
      fs: 14,
    );

    Items item2 = new Items(
      title: " تفادي الدخول بالاحذية ",
      subtitle: ".للمنزل",
      img: "assets/precautions/shoe.png",
      fs: 14,
    );

    Items item3 = new Items(
      title: "تعقيم باستمرار للاشياء",
      subtitle: "  .التي أتواصل بها",
      img: "assets/precautions/sterilization.png",
      fs: 14,
    );
    Items item4 = new Items(
      title: "رعاية المسنين",
      subtitle: "",
      img: "assets/precautions/senior.png",
      fs: 14,
    );

    Items item5 = new Items(
      title: "الحرص على تناول  ",
      subtitle: ".وجبات متكاملة",
      img: "assets/precautions/eat.png",
      fs: 14,
    );

    Items item6 = new Items(
      title: "عدم مصافحة الأخرين",
      subtitle: "",
      img: "assets/precautions/handshake.png",
      fs: 14,
    );

    Items item7 = new Items(
      title: "غسل اليدين بشكل منتضم",
      subtitle: "بالماء و الصابون",
      img: "assets/precautions/handwashing.png",
      fs: 14,
    );

    List<Items> myList = [
      item6,
      item7,
      item3,
      item0,
      item5,
      item2,
      item4,
      item1
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('الاحتياطات الضرورية'),
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
                                    fontSize: 14,
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
                                    color: Colors
                                        .white, //Color.fromRGBO(80, 101, 127, 1),
                                    fontSize: data.fs,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList()),
          ),
           SizedBox(height:8),
        ],
      ),
    );
  }
}
