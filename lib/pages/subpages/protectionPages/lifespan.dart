import 'package:flutter/material.dart';
import 'package:morrocovid/services/item.dart';
import 'package:google_fonts/google_fonts.dart';

class Lifespan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Items item0 = new Items(
      title: " الخشب",
      subtitle: '4 أيام',
      img: "assets/lifespan/wood.png",
    );

    Items item1 = new Items(
      title: " الورق",
      subtitle: " من 4 الى 5 أيام",
      img: "assets/lifespan/paper.png",
    );

    Items item2 = new Items(
      title: " الهواء",
      subtitle: "45 دقيقة",
      img: "assets/lifespan/wind.png",
    );
    Items item3 = new Items(
      title: " الحديد",
      subtitle: "5 أيام",
      img: "assets/lifespan/key.png",
    );

    Items item4 = new Items(
      title: "الزجاج",
      subtitle: " 5 أيام",
      img: "assets/lifespan/wine.png",
    );
    Items item5 = new Items(
      title: " البلاستيك",
      subtitle: " من 6 الى 9 أيام",
      img: "assets/lifespan/plastic.png",
    );

    Items item6 = new Items(
      title: " الثياب",
      subtitle: " 12 ساعة",
      img: "assets/lifespan/tshirt.png",
    );

    List<Items> myList = [item0, item1, item2, item3, item4, item5, item6];

    return Scaffold(
      appBar: AppBar(
        title: Text(' مدة عيش الفيروس '),
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
                                        300], //Color.fromRGBO(80, 101, 127, 1),
                                    fontSize: 16,
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
