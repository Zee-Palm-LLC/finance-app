class BarChartModel {
  String week;
  int financial;

  BarChartModel({
    required this.week,
    required this.financial,
  });
}

final List<BarChartModel> data = [
  BarChartModel(
    week: "Feb",
    financial: 500,
  ),
  BarChartModel(
    week: "Mar",
    financial: 550,
  ),
  BarChartModel(
    week: "Apr",
    financial: 600,
  ),
  BarChartModel(
    week: "May",
    financial: 650,
  ),
  BarChartModel(
    week: "Jun",
    financial: 350,
  ),
  BarChartModel(
    week: "Jul",
    financial: 450,
  ),
  BarChartModel(
    week: "Aug",
    financial: 350,
  ),
];
