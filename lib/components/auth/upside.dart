import 'package:carpalizer/import/import.dart';

class Upside extends StatelessWidget {
  Upside({Key? key,
    required this.imgUrl,
    this.height
  }) : super(key: key);

  final String imgUrl;
  final double? height;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          width: size.width,
          child: Padding(
            padding: EdgeInsets.only(top: size.width * 0.1),
            child: Image.asset(
              imgUrl,
              alignment: Alignment.topCenter,
              height: height != null ? height : size.height / 2,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Positioned(
          right: size.width * 0.01,
          top: size.width * 0.01,
          child: Image.asset(
            "assets/logos/C-16.png",
            scale: 3,
            width: size.width * 0.2,
          ),
        ),
      ],
    );
  }
}