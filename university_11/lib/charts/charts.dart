/*import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Dchart extends StatelessWidget {

   List<PieData> list = [];
  Dchart(this.list);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       
        body:  SfCircularChart(
                  series: <DoughnutSeries<PieData, String>>[
                    DoughnutSeries<PieData, String>(
                      dataSource: list,
                      pointColorMapper: (PieData data, _) => data.color,
                      xValueMapper: (PieData data, _) => data.label,
                      yValueMapper: (PieData data, _) => data.value,
                      dataLabelSettings: DataLabelSettings(isVisible: true),
                    ),
                  ],
                ),
           
        
      ),
    );
  }
}

class PieData {
  final String label;
  final double value;
  final Color color;

  PieData(this.label, this.value, this.color);
}





*/
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class chartCircle extends StatelessWidget {
  List<PieChartSectionData> list = [];
  chartCircle(this.list);

  @override
  Widget build(BuildContext context) {
    List<PieChartSectionData> l = list;
    /*PieChartSectionData(
                color: Colors.blue,
                value: 30,
                title: '30%',
              ),
              PieChartSectionData(
                color: Colors.amber,
                value: 70,
                title: '70%',
              ),
           */
    return Center(
      child: Container(
        width: 150, // Set the width as per your requirement
        height: 150, // Set the height as per your requirement
        child: PieChart(
          PieChartData(
            sections: l,
            borderData: FlBorderData(show: false),
            sectionsSpace: 0,
          ),
        ),
      ),
    );
  }
}


/*
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CustomColorDonutChart extends StatelessWidget {
   List<ChartData> list = [];
  CustomColorDonutChart(this.list);
  @override
  Widget build(BuildContext context) {
    return SfCircularChart(
      series: <DoughnutSeries<ChartData, String>>[
        DoughnutSeries<ChartData, String>(
          dataSource: <ChartData>[
            ChartData('Category 1', 20, Colors.red),
            ChartData('Category 2', 30, Colors.green),
            ChartData('Category 3', 15, Colors.blue),
            ChartData('Category 4', 25, Colors.orange),
            ChartData('Category 5', 10, Colors.purple),
          ],
          xValueMapper: (ChartData data, _) => data.category,
          yValueMapper: (ChartData data, _) => data.value,
          pointColorMapper: (ChartData data, _) => data.color,
        ),
      ],
    );
  }
}

class ChartData {
  final String category;
  final double value;
  final Color color;

  ChartData(this.category, this.value, this.color);
}
*/