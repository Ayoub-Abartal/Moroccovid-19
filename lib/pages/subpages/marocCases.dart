import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:morrocovid/services/item.dart';
import 'package:morrocovid/services/data.dart';
import 'package:morrocovid/services/BouncyEffect.dart';
import 'package:morrocovid/pages/entities.dart';

class MarocCases extends StatelessWidget {
  final Data d;
  MarocCases({
    Key key,
    @required this.d,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // initializing the list that we r working on the listview builder
    //it contains inforamtions about stats

    /** grid list */
    Items item0 = new Items(
      title: " الحالات المؤكدة",
      subtitle: "",
      img: "assets/marocCases/infecteds.png",
      widget: Center(
        child: Text(
          d.cases,
          style: GoogleFonts.openSans(
              textStyle: TextStyle(
                  color: Colors.white, //Color.fromRGBO(80, 101, 127, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w600)),
        ),
      ),
    );

    Items item1 = new Items(
      title: "المصابون ",
      subtitle: '',
      img: "assets/marocCases/infected.png",
      widget: Center(
        child: Text(
          d.activeCases,
          style: GoogleFonts.openSans(
              textStyle: TextStyle(
                  color: Colors.white, //Color.fromRGBO(80, 101, 127, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w600)),
        ),
      ),
    );

    Items item2 = new Items(
      title: " المتعافون",
      subtitle: "",
      img: "assets/marocCases/band-aid.png",
      widget: Center(
        child: Text(
          d.recovered,
          style: GoogleFonts.openSans(
              textStyle: TextStyle(
                  color: Colors.white, //Color.fromRGBO(80, 101, 127, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w600)),
        ),
      ),
    );

    Items item3 = new Items(
      title: "الحالات المستبعدة ",
      subtitle: '',
      img: "assets/marocCases/avoid.png",
      widget: Center(
        child: Text(
          d.excluded,
          style: GoogleFonts.openSans(
              textStyle: TextStyle(
                  color: Colors.white, //Color.fromRGBO(80, 101, 127, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w600)),
        ),
      ),
    );

    Items item4 = new Items(
      title: "المتوفون",
      subtitle: "",
      img: "assets/marocCases/deatth.png",
      widget: Center(
        child: Text(
          d.death,
          style: GoogleFonts.openSans(
              textStyle: TextStyle(
                  color: Colors.white, //Color.fromRGBO(80, 101, 127, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w600)),
        ),
      ),
    );

    Items item5 = new Items(
      title: " حالات اليوم",
      subtitle: "",
      img: "assets/marocCases/ambulance.png",
      widget: Center(
        child: Text(
          d.todayCases,
          style: GoogleFonts.openSans(
              textStyle: TextStyle(
                  color: Colors.white, //Color.fromRGBO(80, 101, 127, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w600)),
        ),
      ),
    );

    Items item6 = new Items(
      title: " وفيات اليوم",
      subtitle: '',
      img: "assets/marocCases/todayDeath.png",
      widget: Center(
        child: Text(
          d.todayDeath,
          style: GoogleFonts.openSans(
              textStyle: TextStyle(
                  color: Colors.white, //Color.fromRGBO(80, 101, 127, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w600)),
        ),
      ),
    );
    Items item7 = new Items(
      title: "التقسيم حسب الجهات",
      subtitle: '',
      img: "assets/marocCases/demographics.png",
      widget: Flexible(
        flex: 2,
        child: ButtonTheme(
          minWidth: 80.0,
          height: 1.0,
          child: RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                BouncyEffect(widget: Entities(d: d)),
              );
            },
            // End animation
            child: Text(
              'اضغط هنا',
              style: GoogleFonts.openSans(
                  textStyle: TextStyle(
                      color: Colors.white, //Color.fromRGBO(186, 185, 202, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w600)),
            ),
            color: Colors.blue[300], //Colors.grey[200],
          ),
        ),
      ),
    );

    List<Items> myList = [
      item7,
      item0,
      item3,
      item1,
      item4,
      item2,
      item5,
      item6,
    ];

    /**end grid list */
    return Scaffold(
      appBar: AppBar(
        title: Text(
          ' الحالات بالمغرب',
        ),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Image.asset(
            'assets/doctorm.png',
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
                      color: Colors.redAccent,
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
                        data.widget,
                      ],
                    ),
                  );
                }).toList()),
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
