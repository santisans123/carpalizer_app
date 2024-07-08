import 'package:carpalizer/import/import.dart';

class ContentCards extends StatelessWidget {
  final String title;
  final String image;
  final String description;
  final Color color;
  final double? height;
  final Color titleColor;
  final bool icon;
  final Function() link;

  const ContentCards({
    Key? key,
    required this.title,
    required this.image,
    required this.description,
    required this.link,
    this.height,
    required this.color,
    required this.icon,
    required this.titleColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height != null ? height : 140,
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          shadowColor: color,
          elevation: 5,
          margin: const EdgeInsets.all(10),
          child: InkWell(
            onTap: link,
            child: Row(
              children: [
                SizedBox(
                  child: Center(
                    child: Container(
                        child: Image.asset(
                            image,
                            width: 120.0,
                            height: 120.0)),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: titleColor),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      width: 210,
                      child: Text(
                        description,
                        style: TextStyle(
                            fontSize: 12, color: Colors.blueGrey),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                icon == true ? Icon(Icons.chevron_right, size: 30, color:titleColor,) : Container()
              ],
            ),
          )),
    );
  }
}