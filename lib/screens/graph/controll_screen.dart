import 'package:carpalizer/components/graph/upsite_title.dart';
import 'package:carpalizer/import/import.dart';

class ControllScreen extends StatefulWidget {
  const ControllScreen({Key? key}) : super(key: key);
  @override
  State<ControllScreen> createState() => _ControllScreenState();
}

class _ControllScreenState extends State<ControllScreen> {
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
                  back: false,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: size.height / 7,
                  ),
                  child: Container(
                    height: size.height / 1.29,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            // Kolom Kiri
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                _buildIcon('L',  false),
                                SizedBox(height: 20),
                                _buildImageAsset(
                                    'assets/contents/L.png', 'L', false,
                                ),
                                _buildBatteryStatus('Battery L: ',
                                    75), // Contoh persentase baterai
                              ],
                            ),
                            // Kolom Kanan
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                _buildIcon('R', true),
                                SizedBox(height: 20),
                                _buildImageAsset(
                                    'assets/contents/R.png',
                                  'R',
                                  true
                                ),
                                _buildBatteryStatus('Battery R: ',
                                    50), // Contoh persentase baterai
                              ],
                            ),
                          ],
                        ),
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

Widget _buildIcon(String letter, bool isOnline) {
  return Column(
    children: [
      CircleAvatar(
        radius: 30,
        backgroundColor: kPrimaryLightColor,
        child: Text(
          letter,
          style: TextStyle(
            fontSize: 24,
            color: isOnline ? Colors.green : Colors.red,
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
            color: isOnline ? Colors.green : Colors.red,
          ),
          SizedBox(width: 5),
          Text(
            isOnline ? 'Online' : 'Offline',
            style: TextStyle(
              color: isOnline ? Colors.green : Colors.red,
            ),
          ),
        ],
      ),
    ],
  );
}

Widget _buildImageAsset(String assetPath, String letter, bool isOnline) {
  return Column(
    children: [
      InkWell(
        onTap: () {
          Get.to(GraphScreen(
            letter: letter,
            isOnline: isOnline,
          ));
        },
        child: Image.asset(
          assetPath,
          width: 150,
          height: 300,
        ),
      ),
      SizedBox(height: 10),
    ],
  );
}

Widget _buildBatteryStatus(String label, int percentage) {
  return Row(
    children: [
      Icon(
        Icons.battery_full,
        color: Colors.green,
        size: 40,
      ),
      SizedBox(width: 5),
      Text('$label $percentage%',style: TextStyle(
        fontSize: 19
      )),
    ],
  );
}
