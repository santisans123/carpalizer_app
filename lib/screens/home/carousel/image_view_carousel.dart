import 'package:carpalizer/import/import.dart';

class ImageViewCarousel extends StatefulWidget {
  ImageViewCarousel({Key? key, required this.imgPath}) : super(key: key);

  final String imgPath;

  @override
  State<ImageViewCarousel> createState() => _ImageViewCarouselState();
}

class _ImageViewCarouselState extends State<ImageViewCarousel> {
  @override
  Widget build(BuildContext context) {
    final size_width = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: size_width * 0.01),
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(widget.imgPath),
            fit: BoxFit.cover,),
          borderRadius: const BorderRadius.all(
              Radius.circular(15)
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.grey.withOpacity(0.6),
                offset: const Offset(0,0),
                blurRadius: 8
            )
          ]
      ),
    );
  }
}