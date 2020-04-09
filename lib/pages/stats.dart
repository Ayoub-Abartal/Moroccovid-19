import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:morrocovid/pages/subpages/marocCases.dart';
import 'package:morrocovid/pages/subpages/worldCases.dart';
import 'package:morrocovid/pages/subpages/about.dart';
import 'package:morrocovid/pages/subpages/protect.dart';
import 'package:morrocovid/services/bouncyEffect.dart';
import 'package:morrocovid/services/item.dart';
import 'package:morrocovid/services/data.dart';
import 'dart:async';

class Stats extends StatefulWidget {
  @override
  _StatsState createState() => _StatsState();
}

class _StatsState extends State<Stats> {
  Map all = {};

  void ref() {
    Timer.periodic(Duration(minutes: 10), (timer) {
      Navigator.pushReplacementNamed(context, "/loading");
    });
  }

  @override
  void initState() {
    super.initState();
    ref();
  }

  @override
  Widget build(BuildContext context) {
    all = ModalRoute.of(context).settings.arguments;

    Data dM = Data(
        cases: all['cases'],
        activeCases: all['activeCases'],
        death: all['deaths'],
        excluded: all['excluded'],
        recovered: all['recovered'],
        percentage: all['percentage'],
        todayCases: all['todayCases'],
        todayDeath: all['todayDeath'],
        regions: all['regions']);

    Data dW = Data(
      worldCases: all['worldCases'],
      worldDeaths: all['worldDeath'],
      worldRecovered: all['worldRecovered'],
    );

    Items item0 = new Items(
      title: " الحالات بالمغرب",
      subtitle: "اضغط هنا",
      img: "assets/morocco(1).png",
      widget: MarocCases(d: dM),
    );

    Items item1 = new Items(
      title: "أحمي نفسي",
      subtitle: "اضغط هنا",
      img: "assets/shield(3).png",
      widget: Protect(),
    );

    Items item2 = new Items(
      title: "عن المطور",
      subtitle: "اضغط هنا",
      img: "assets/development.png",
      widget: About(),
    );
    Items item3 = new Items(
      title: "الحالات بالعالم ",
      subtitle: "اضغط هنا",
      img: "assets/virus.png",
      widget: WorldCases(d: dW),
    );

    List<Items> myList = [item0, item3, item1, item2];

    return Scaffold(
      backgroundColor: Color(0xff392850),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Transform.translate(
              offset: Offset(0, 20),
              child: Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/corona.png'),
                  backgroundColor: Colors.transparent,
                  radius: 40.0,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 130, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            /** begin grid*/

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
                        color: Color(0xff453658),
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
                          /*  AspectRatio(
                            aspectRatio: 2,
                            child:*/
                          Flexible(
                            flex: 4,
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

                                // End animation

                                child: Text(
                                  data.subtitle,
                                  style: GoogleFonts.openSans(
                                      textStyle: TextStyle(
                                          color: Colors
                                              .white70, //Color.fromRGBO(186, 185, 202, 1),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600)),
                                ),
                                color: Colors.white38, //Colors.grey[200],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList()),
            ),
            Transform.translate(
              offset: Offset(0, -5),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/loading');
                },
                child: Text('تحديث'),
              ),
            ),
            Text('التحديث الألي يكون كل 10 دقائق *',
                style: TextStyle(color: Colors.red)),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 40,
                    height: 40,
                    child: Image.asset('assets/home.png'),
                  ),
                  Text(
                    "بقى فدارك#",
                    style: TextStyle(
                        color: Colors.white, //Color.fromRGBO(80, 101, 127, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    child: Image.asset('assets/home.png'),
                  ),
                ],
              ),
            ),
            /** end grid */
            SizedBox(
              height: 6,
            )
          ],
        ),
      ),
    );
  }
}
