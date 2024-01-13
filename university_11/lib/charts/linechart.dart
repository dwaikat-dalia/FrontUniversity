import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:google_fonts/google_fonts.dart';

//        body: Container(width: 460, height: 300, child: ColumnChartSample()),

class ColumnChartSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffF5F5F5),
        borderRadius: BorderRadius.circular(16.0), // Adjust the border radius
        border: Border.all(color: Colors.blue, width: 1.5), // Border properties
      ),
      child: SfCartesianChart(
        primaryXAxis: CategoryAxis(
            labelStyle: GoogleFonts.salsa(
                color: Color.fromARGB(255, 1, 30, 92),
                fontWeight: FontWeight.bold)),
        title: ChartTitle(
            text: 'Reports Range',
            textStyle:
                GoogleFonts.salsa(color: Color.fromARGB(255, 1, 30, 92))),

        //legend: Legend(isVisible: true),
        primaryYAxis: NumericAxis(
          majorGridLines: MajorGridLines(width: 0),
          labelStyle: GoogleFonts.salsa(
              color: Color.fromARGB(255, 1, 30, 92),
              fontWeight: FontWeight.bold),
          interval: 10, // Adjust the interval based on your data range
        ),
        series: <ColumnSeries<SalesData, String>>[
          ColumnSeries<SalesData, String>(
            dataSource: <SalesData>[
              SalesData('week 1', 30),
              SalesData('week 2', 30),
              SalesData('week 3', 28),
              SalesData('week 4', 30),
              SalesData('week 5', 22),
              SalesData('week 6', 10),
              SalesData('week 7', 0),
              SalesData('week 8', 0),
              SalesData('week 9', 0),
              SalesData('week 10', 0),
              SalesData('week 11', 0),
              SalesData('week 12', 0),
              SalesData('week 13', 0),
              SalesData('week 14', 0),
            ],
            xValueMapper: (SalesData sales, _) => sales.product,
            yValueMapper: (SalesData sales, _) => sales.sales,
            dataLabelSettings: DataLabelSettings(
              isVisible: true,
              textStyle: GoogleFonts.salsa(
                  color: Color.fromARGB(255, 1, 30, 92),
                  fontWeight: FontWeight.bold),
            ),
            color: Color(0xff9EB9D4),
            // Set the color to amber
          ),
        ],
      ),
    );
  }
}

class SalesData {
  final String product;
  final double sales;

  SalesData(this.product, this.sales);
}
