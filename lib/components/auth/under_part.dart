import 'package:carpalizer/import/import.dart';

class UnderPart extends StatelessWidget {
  const UnderPart(
      {Key? key,
        this.title,
        required this.navigatorText,
        required this.onTap})
      : super(key: key);
  final String? title;
  final String navigatorText;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        margin: EdgeInsets.only(bottom: size.height * 0.01),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            title != null ?
            Text(
              title!,
              style: const TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 13,
                  color: Colors.grey,
                  fontWeight: FontWeight.w600),
            ) : Container(),
            const SizedBox(
              width: 20,
            ),
            InkWell(
              onTap: () {
                onTap();
              },
              child: Text(
                navigatorText,
                style: const TextStyle(
                    color: kPrimaryColor,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Opensans'),
              ),
            )
          ],
        )
    );
  }
}