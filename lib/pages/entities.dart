import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:morrocovid/services/item.dart';
import 'package:morrocovid/services/data.dart';

class Entities extends StatelessWidget {
  final Data d;
  Entities({
    Key key,
    @required this.d,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Items item0 = new Items(
      title: " CASA-SETTAT",
      regn: int.parse(d.regions['Casa']),
      img: "assets/marocCases/man.png",
      fs: 14,
    );

    Items item1 = new Items(
      title: "RABAT-KENITRA",
      regn: int.parse(d.regions['Rabat']),
      img: "assets/marocCases/man.png",
      fs: 14,
    );

    Items item2 = new Items(
      title: "MERRAKECH-SAFI",
      regn: int.parse(d.regions['KechAsfi']),
      img: "assets/marocCases/man.png",
      fs: 14,
    );
    Items item3 = new Items(
      title: "FES-MEKNES",
      regn: int.parse(d.regions['FesMkns']),
      img: "assets/marocCases/man.png",
      fs: 14,
    );

    Items item4 = new Items(
      title: "TANGER-HOCEIMA",
      regn: int.parse(d.regions['Tanger']),
      img: "assets/marocCases/man.png",
      fs: 14,
    );

    Items item5 = new Items(
      title: "ORIENTAL",
      regn: int.parse(d.regions['Oriental']),
      img: "assets/marocCases/man.png",
      fs: 14,
    );

    Items item6 = new Items(
      title: "DARAATAFILALET",
      regn: int.parse(d.regions['DraaTaf']),
      img: "assets/marocCases/man.png",
      fs: 14,
    );

    Items item7 = new Items(
        title: "BENIMELLAL-KHNIFRA",
        regn: int.parse(d.regions['BeniMellal']),
        img: "assets/marocCases/man.png",
        fs: 14);

    Items item8 = new Items(
      title: "SOUSS-MASSA",
      regn: int.parse(d.regions['sousMasa']),
      img: "assets/marocCases/man.png",
      fs: 14,
    );

    Items item9 = new Items(
      title: "LAAYOUN SAKIA ELHAMRA",
      regn: int.parse(d.regions['Layoun']),
      img: "assets/marocCases/man.png",
      fs: 10,
    );

    Items item11 = new Items(
      title: "GUELMIM-OUEDNOUN",
      regn: int.parse(d.regions['Goulm']),
      img: "assets/marocCases/man.png",
      fs: 12,
    );

    Items item12 = new Items(
      title: "DAKHLA OUEDED DAHAB",
      regn: int.parse(d.regions['Dakhala']),
      img: "assets/marocCases/man.png",
      fs: 10,
    );

    List<Items> myList = [
      item0,
      item3,
      item1,
      item2,
      item4,
      item5,
      item7,
      item8,
      item9,
      item11,
      item12
    ];

    int taille = myList.length;
    Object tmp = null;
    for (int i = 0; i < taille; i++) {
      for (int j = 1; j < (taille - i); j++) {
        if (myList[j - 1].regn < myList[j].regn) {
          //echanges des elements
          tmp = myList[j - 1];
          myList[j - 1] = myList[j];
          myList[j] = tmp;
        }
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('التقسيم حسب الجهات'),
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
                        SizedBox(height: 8),
                        Flexible(
                          child: Center(
                            child: Image.asset(
                              data.img,
                              width: 120,
                              height: 70,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Flexible(
                          flex: 1,
                          child: Center(
                            child: Text(
                              data.title,
                              style: GoogleFonts.openSans(
                                  textStyle: TextStyle(
                                      color: Colors
                                          .white, //Color.fromRGBO(80, 101, 127, 1),
                                      fontSize: data.fs,
                                      fontWeight: FontWeight.w600)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Flexible(
                          flex: 1,
                          child: Center(
                            child: Text(
                              data.regn.toString(),
                              style: GoogleFonts.openSans(
                                  textStyle: TextStyle(
                                      color: Colors
                                          .white, //Color.fromRGBO(80, 101, 127, 1),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w800)),
                            ),
                          ),
                        ),
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
