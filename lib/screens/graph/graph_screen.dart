import 'package:carpalizer/import/import.dart';

class GraphScreen extends StatefulWidget {
  const GraphScreen({Key? key,
    required this. isOnline,
    required this.letter,
  }) : super(key: key);
  final bool isOnline;
  final String letter;

  @override
  State<GraphScreen> createState() => _GraphScreenState();
}

class _GraphScreenState extends State<GraphScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
      backgroundColor: kPrimaryColor,
      body: Container(
        color: kPrimaryColor,
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                UpsideTitle(
                  title: 'CARPALIZER',
                  description: 'SMART GLOVE',
                  back: true,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: size.height / 7,
                  ),
                  child: Container(
                    height: size.height / 1.2,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 80),
                            padding: const EdgeInsets.all(20.0),
                            child: LineChart(
                              LineChartData(
                                gridData: FlGridData(
                                  show: true,
                                  drawVerticalLine: true,
                                  getDrawingHorizontalLine: (value) {
                                    return FlLine(
                                      color: Colors.grey,
                                      strokeWidth: 0.5,
                                    );
                                  },
                                  getDrawingVerticalLine: (value) {
                                    return FlLine(
                                      color: Colors.grey,
                                      strokeWidth: 0.5,
                                    );
                                  },
                                ),
                                titlesData: FlTitlesData(
                                  show: true,
                                  bottomTitles: SideTitles(
                                    showTitles: true,
                                    interval: 1, // Menampilkan setiap label
                                    getTitles: (value) {
                                      switch (value.toInt()) {
                                        case 0:
                                          return '1h';
                                        case 1:
                                          return '6h';
                                        case 2:
                                          return '1d';
                                        case 3:
                                          return '1wk';
                                        case 4:
                                          return '1mo';
                                        case 5:
                                          return '3mo';
                                      }
                                      return '';
                                    },
                                    margin: 8,
                                  ),
                                  rightTitles: SideTitles(showTitles: false),
                                  topTitles: SideTitles(showTitles: false),
                                  leftTitles: SideTitles(
                                    showTitles: true,
                                    interval: 1,
                                    reservedSize: 28, // Mengatur ruang untuk label di sebelah kiri sumbu y
                                    getTitles: (value) {
                                      switch (value.toInt()) {
                                        case 1:
                                          return 'emg';
                                        case 2:
                                          return '2 emg';
                                        case 3:
                                          return '3 emg';
                                        case 4:
                                          return '4 emg';
                                        case 5:
                                          return '5 emg';
                                        case 6:
                                          return '6 emg';
                                        case 7:
                                          return '7 emg';
                                      }
                                      return '';
                                    },
                                    margin: 8,
                                  ),
                                ),
                                borderData: FlBorderData(
                                  show: true,
                                  border: Border.all(color: Colors.grey, width: 0.5),
                                ),
                                lineBarsData: [
                                  LineChartBarData(
                                    spots: [
                                      FlSpot(0, 1),
                                      FlSpot(1, 2),
                                      FlSpot(2, 5),
                                      FlSpot(3, 3),
                                      FlSpot(4, 7),
                                      FlSpot(5, 4),
                                    ],
                                    isCurved: false,
                                    colors: [Colors.blue],
                                    barWidth: 3,
                                    isStrokeCapRound: true,
                                    dotData: FlDotData(show: false),
                                    belowBarData: BarAreaData(show: false),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: kPrimaryLightColor,
                                  child: Text(
                                    widget.letter,
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: widget.isOnline ? Colors.green : Colors.red,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      size: 12,
                                      color: widget.isOnline ? Colors.green : Colors.red,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      widget.isOnline ? 'Online' : 'Offline',
                                      style: TextStyle(
                                        color: widget.isOnline ? Colors.green : Colors.red,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
