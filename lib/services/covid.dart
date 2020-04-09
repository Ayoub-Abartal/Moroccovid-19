import 'dart:convert';
import 'package:http/http.dart';

class Covid {
  String cases;
  String recovered;
  String death;
  String excluded;
  String todayCases;
  String todayDeath;
  String activeCases;
  String percentage;
  String worldCases;
  String worldDeath;
  String worldRecovered;
  Map<String, dynamic> regions = {};

  Future<void> getInfo() async {
    try {
      Response response = await get('https://tram-production.com/covid-api');

      Map data = json.decode(response.body);
      List datas = data['REGIONS'];
      regions = {
        "BeniMellal": datas[0]['BENIMELLALKHNIFRA'],
        "Casa": datas[0]['CASASETTAT'],
        "Tanger": datas[0]['TANGERTETOUANELHOCEIMA'],
        "FesMkns": datas[0]['FESMEKNES'],
        "Dakhala": datas[0]['DAKHLAOUEDEDDAHAB'],
        "Layoun": datas[0]['LAAYOUNSAKIAELHAMRA'],
        "Oriental": datas[0]['ORIENTAL'],
        "Rabat": datas[0]['RABATSALKENITRA'],
        "Goulm": datas[0]['GUELMIMOUEDNOUN'],
        "sousMasa": datas[0]['SOUSSMASSA'],
        "KechAsfi": datas[0]['MERRAKECHSAFI'],
        "DraaTaf": datas[0]['DARAATAFILALET']
      };
      print(data);

      cases = data['MA-CASES'];
      recovered = data['MA-RECOVERED'];
      death = data['MA-DEATHS'];
      excluded = data['MA-EXCLUDE'];
      todayCases = data['MA-TODAY-CASES'];
      todayDeath = data['MA-TODAY-DEATHS'];
      activeCases = data['MA-ACTIVE-CASES'];
      percentage = data['MA-DEATHS-PERCENTAGE'];
      worldCases = data['WORLD-CASES'];
      worldDeath = data['WORLD-DEATHS'];
      worldRecovered = data['WORLD-RECOVERED'];
    } catch (e) {
      print(e);
      cases = "No Internet";
      recovered = "No Internet";
      death = "No Internet";
      excluded = "No Internet";
      todayCases = "No Internet";
      todayDeath = "No Internet";
      activeCases = "No Internet";
      percentage = "No Internet";
      worldCases = "No Internet";
      worldDeath = "No Internet";
      worldRecovered = "No Internet";
      regions = {
        "BeniMellal": "No internet",
        "Casa": "No internet",
        "Tanger": "No internet",
        "FesMkns": "No internet",
        "Dakhala": "No internet",
        "Layoun": "No internet",
        "Oriental": "No Internet",
        "Rabat": "No Internet",
        "Goulm": "No Internet",
        "sousMasa": "No Internet",
        "KechAsfi": "No Internet",
        "DraaTaf": "No Internet"
      };
    }
  }
}
