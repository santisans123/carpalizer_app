import 'package:carpalizer/import/import.dart';

class UpsideProfile extends StatelessWidget {
  UpsideProfile({
    Key? key,
    required this.imgUrl,
  }) : super(key: key);

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                // Gambar User
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(imgUrl), // URL gambar user
                ),
                SizedBox(width: 16), // Spasi antara gambar dan teks
                // Nama dan Email User
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Nama User',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryLightColor,
                      ),
                    ),
                    Text(
                      'emailuser@example.com',
                      style: TextStyle(
                        fontSize: 16,
                        color: kPrimaryLightColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            right: size.width * 0.05,
            top: size.width * 0.05,
            child: IconButton(
              icon: Icon(Icons.logout),
              color: kPrimaryLightColor,
              onPressed: () {
                Get.offAll(LoginScreen());
              },
            ),
          ),
        ],
      ),
    );
  }
}
