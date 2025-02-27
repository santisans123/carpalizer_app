import 'dart:async';

import 'package:carpalizer/import/import.dart';
import 'package:carpalizer/screens/navbar.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // final box = GetStorage();
  startSplashPage() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }
  @override
  void initState() {
    super.initState();
    startSplashPage();
  }
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    "assets/logos/C-16.png",
                    width: width * 0.9,
                    height: width * 0.6,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: width * 0.02),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text("Copyright 2024 All Right Reserved | Carpalizer", style: TextStyle(
                    fontSize: width * 0.03
                )),
              ),
            )

          ],
        )
    );
  }
}