class Data {
  String cases;
  String recovered;
  String death;
  String excluded;
  String todayCases;
  String todayDeath;
  String activeCases;
  String percentage;
  String worldCases;
  String worldDeaths;
  String worldRecovered;
  int regn;
  Map regions = {};
  Data(
      {this.cases,
      this.activeCases,
      this.death,
      this.excluded,
      this.recovered,
      this.percentage,
      this.todayCases,
      this.todayDeath,
      this.worldCases,
      this.worldDeaths,
      this.worldRecovered,
      this.regions,
      this.regn});
}
