import 'package:carpalizer/import/import.dart';

class UpsideTitle extends StatelessWidget {
  UpsideTitle({
    Key? key,
    required this.title,
    required this.description,
    required this.back,
  }) : super(key: key);

  final String title;
  final String description;
  final bool back;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return
        Stack(
          children: [
            back == true ?
            Positioned(
              left: size.width * 0.005,
              top: size.width * 0.005,
              child: IconButton(
                icon: Icon(Icons.chevron_left, size: 35),
                color: kPrimaryLightColor,
                onPressed: () {
                  Get.back();
                },
              ),
            ) : Container(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: 55,
                            fontWeight: FontWeight.bold,
                            color: kPrimaryLightColor,
                          ),
                        ),
                        Text(
                          description,
                          style: TextStyle(
                            fontSize: 25,
                            color: kPrimaryLightColor,
                          ),
                        ),
                      ],
                    ),

              ),
            ),
          ],
        );
  }
}
