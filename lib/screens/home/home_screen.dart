import 'package:carpalizer/import/import.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _TopupGameState();
}

class _TopupGameState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            body: Container(
              color: kPrimaryWhiteColor,
              child: ListView(
                children: [
                  Carousel(),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    shadowColor: kPrimaryBrownColor,
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {
                        Get.to(TutorialScreen());
                      },
                      child: Padding(
                        padding: EdgeInsets.all(10), // Tambahkan padding untuk memastikan konten tidak menempel pada tepi
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Tutorial Aplikasi",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: kPrimaryBrownColor,
                              ),
                            ),
                            Center(
                              child: Image.asset(
                                "assets/illustrations/process.png",
                                width: 150.0,
                                height: 150.0,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Get.to(TutorialScreen());
                              },
                              style: ElevatedButton.styleFrom(
                                primary: kPrimaryBrownColor, // Warna background tombol
                                onPrimary: Colors.white, // Warna teks tombol
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0), // Atur radius untuk membuat tombol bulat
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 05), // Atur padding untuk tampilan minimalis
                                textStyle: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              child: Text("Disini"),
                            ),
                            Text(
                              'Klik untuk mendapatkan seputar informasi penggunaan carpalizer dan lainnya',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.blueGrey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  ContentCards(
                    icon: true,
                    titleColor: kPrimaryOrangeColor,
                    title: "Manual Book",
                    image: "assets/illustrations/manual-book.png",
                    description: 'Klik untuk mendapatkan informasi seputar manual book mengenai penggunaan carpalizer',
                    link: () {

                    },
                    color: kPrimaryOrangeColor,
                  ),
                  ContentCards(
                    icon: true,
                    titleColor: kPrimaryDarkGreyColor,
                    title: "Video Tutorial",
                    image: "assets/illustrations/video.png",
                    description: 'Klik untuk mendapatkan video tutorial penggunaan carpalizer',
                    link: () {

                    },
                    color: kPrimaryDarkGreyColor,
                  )
                ],
              ),
            ),
          )
      ),
    );
  }
}


