import 'package:flutter/material.dart';
import 'package:morrocovid/services/data.dart';
import 'package:morrocovid/services/item.dart';
import 'package:google_fonts/google_fonts.dart';

class WorldCases extends StatelessWidget {
  final Data d;

  WorldCases({
    Key key,
    @required this.d,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Items item0 = new Items(
      title: " الحالات المؤكدة",
      subtitle: d.worldCases,
      img: "assets/marocCases/infecteds.png",
    );

    Items item1 = new Items(
      title: "المتوفون",
      subtitle: d.worldDeaths,
      img: "assets/marocCases/deatth.png",
    );

    Items item2 = new Items(
      title: " المتعافون",
      subtitle: d.worldRecovered,
      img: "assets/marocCases/band-aid.png",
    );

    /** calculating the percentage of the deaths */
    double percentage = 0;
    int worldCases = 0;
    int worldDeaths = 0;
    String perc = '';
    if (d != null) {
      try {
        d.worldCases = d.worldCases.replaceAll(new RegExp(r','), '');
        worldCases = int.parse(d.worldCases);
        d.worldDeaths = d.worldDeaths.replaceAll(new RegExp(r','), '');
        worldDeaths = int.parse(d.worldDeaths);

        percentage = worldDeaths / worldCases * 100;
        perc = percentage.toStringAsPrecision(3);
      } catch (e) {
        print(e);
      }
    }

    /** end  */

    Items item3 = new Items(
      title: "نسبة الوفيات",
      subtitle: '$perc %',
      img: 'assets/WorldCases/perc.png',
    );

    List<Items> myList = [item0, item1, item2, item3];
    return Scaffold(
      appBar: AppBar(
        title: Text('الحالات بالعالم'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent[700],
      ),
      body: Column(
        children: <Widget>[
          Image.asset(
            'assets/doctor.png',
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
                      color: Colors.greenAccent[700],
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
                                    color: Colors
                                        .white, //Color.fromRGBO(80, 101, 127, 1),
                                    fontSize: 16,
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
