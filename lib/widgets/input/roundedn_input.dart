import 'package:carpalizer/import/import.dart';

class RoundedInput extends StatefulWidget {
  const RoundedInput(
      {Key? key,
        this.hintText,
        this.isButton = false,
        this.onTap,
        this.textTitle,
        this.icon,
        this.link,
        this.controller,
        this.maxLine = 0,
        this.isVisible = false,
        this.type = TextInputType.text})
      : super(key: key);

  final String? hintText;
  final int maxLine;
  final bool? isButton;
  final void Function()? onTap;
  final String? textTitle;
  final IconData? icon;
  final void Function(String)? link;
  final TextEditingController? controller;
  final bool? isVisible;
  final TextInputType? type;

  @override
  State<RoundedInput> createState() => _RoundedInputState();
}

class _RoundedInputState extends State<RoundedInput> {
  bool _passwordVisible = false;

  @override
  void initState() {
    _passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.textTitle != null
            ? TextInputTitle(text: widget.textTitle!)
            : Container(),
        Container(
          margin: EdgeInsets.symmetric(vertical: size.height * 0.01),
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
          width: double.infinity,
          decoration: BoxDecoration(
              color: kPrimaryWhiteColor,
              border: Border.all(color: kPrimaryLightGreyColor),
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: kPrimaryGreyColor.withOpacity(0.6),
                    offset: const Offset(0, 0),
                    blurRadius: 4)
              ]),
          child: widget.isButton == true
              ? GestureDetector(
              onTap: widget.onTap,
              child: ListTile(
                  minLeadingWidth: 0,
                  horizontalTitleGap: size.width * 0,
                  leading: Transform.translate(
                      offset: Offset(-15, 0),
                      child: Icon(
                        widget.icon,
                        size: size.width * 0.05,
                        color: kPrimaryColor,
                      )),
                  trailing: Icon(
                    Icons.chevron_right,
                    size: size.width * 0.08,
                    color: kPrimaryColor,
                  ),
                  title: Text(
                    "${widget.textTitle}",
                    textAlign: TextAlign.start,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: size.width * 0.045,
                        color: kPrimaryDarkGreyColor),
                  )))
              : TextFormField(
            controller: widget.controller,
            onFieldSubmitted: widget.link,
            keyboardType: widget.type,
            cursorColor: kPrimaryColor,
            obscureText:  widget.maxLine != 0 ? false  : !_passwordVisible ,
            maxLines: widget.maxLine != 0 ? widget.maxLine : null,
            decoration: InputDecoration(
                icon: widget.icon == null ? null : Icon(
                  widget.icon,
                  size: size.width * 0.05,
                  color: kPrimaryColor,
                ),
                hintText: widget.hintText,
                hintStyle: const TextStyle(fontFamily: 'OpenSans'),
                suffixIcon: widget.isVisible == true
                    ? IconButton(
                  icon: Icon(
                    _passwordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: kPrimaryColor,
                  ),
                  onPressed: () {
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                    });
                  },
                )
                    : null,
                border: InputBorder.none),
          ),
        )
      ],
    );
  }
}