import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:morrocovid/services/covid.dart';
import '../services/covid.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupData() async {
    Covid instance = Covid();
    await instance.getInfo();
    Navigator.pushReplacementNamed(context, '/stats', arguments: {
      'cases': instance.cases,
      'deaths': instance.death,
      'recovered': instance.recovered,
      'excluded': instance.excluded,
      'todayCases': instance.todayCases,
      'todayDeath': instance.todayDeath,
      'activeCases': instance.activeCases,
      'percentage': instance.percentage,
      'worldCases': instance.worldCases,
      'worldDeath': instance.worldDeath,
      'worldRecovered': instance.worldRecovered,
      'regions': instance.regions,
    });
  }

  void initState() {
    super.initState();
    setupData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.greenAccent,
        body: Center(
          child: SpinKitFadingCube(
            color: Colors.white,
            size: 50.0,
          ),
        ));
  }
}
