import 'package:flutter/material.dart';
import 'package:morrocovid/pages/home.dart';
import 'package:morrocovid/pages/stats.dart';
import 'package:morrocovid/pages/loading.dart';

void main() => runApp(MaterialApp(
      title: "Moroccovid-19",
      color: Colors.greenAccent,
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/loading': (context) => Loading(),
        '/stats': (context) => Stats(),
      },
      debugShowCheckedModeBanner: false,
    ));
