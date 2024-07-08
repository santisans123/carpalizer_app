import 'package:carpalizer/import/import.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final passwordController = TextEditingController();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
          backgroundColor: kPrimaryWhiteColor,
          body: Container(
            color: kPrimaryRedColor,
            child: SizedBox(
              width: size.width,
              height: size.height,
              child: SingleChildScrollView(
                child: Stack(
                  children: [
                    Upside(
                      imgUrl: "assets/contents/login.png",
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: size.height / 1.9,
                      ),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                          ),
                        ),
                        child: Container(
                            margin: EdgeInsets.only(
                                right: size.width * 0.08,
                                left: size.width * 0.08,
                                top: size.width * 0.04),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TitleAuth(
                                  title: "LOGIN",
                                  description: "Masukkan email dan password",
                                ),
                                Form(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      RoundedInput(
                                        textTitle: "Email",
                                        hintText: "@email",
                                        icon: Icons.email,
                                        type: TextInputType.emailAddress,
                                        controller: emailController,
                                      ),
                                      RoundedInput(
                                        textTitle: "Password",
                                        hintText: "Password",
                                        isVisible: true,
                                        icon: Icons.lock,
                                        controller: passwordController,
                                      ),
                                      Container(
                                        height: size.width * 0.07,
                                        child: switchListTile(),
                                      ),
                                      RoundedButton(
                                        text: "LOGIN",
                                        color: kPrimaryColor,
                                        press: () {
                                          Get.to(Navbar());
                                        },
                                      ),
                                      // RoundedButton(
                                      //   logo: "assets/logos/google.png",
                                      //   text: "Login With Google",
                                      //   color: kPrimaryWhiteColor,
                                      //   textColor: kPrimaryColor,
                                      //   press: () {
                                      //
                                      //   },
                                      // ),
                                      Container(
                                        margin: EdgeInsets.only(top:  size.width * 0.02),
                                        child: UnderPart(
                                          title: "Don't have an account?",
                                          navigatorText: "Register",
                                          onTap: () {
                                            Get.to(RegisterScreen());
                                          },
                                        ),
                                      ),

                                      UnderPart(
                                        navigatorText: "Forgot password?",
                                        onTap: () {},
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

class switchListTile extends StatefulWidget {
  @override
  State<switchListTile> createState() => _switchListTileState();
}

class _switchListTileState extends State<switchListTile> {
  bool isSwitched = false;

  void _onSwitchChanged(bool value) {
    isSwitched = value;
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SwitchListTile(
        visualDensity: VisualDensity(horizontal: 0, vertical: -4),
        dense: true,
        title: Text(
          'Remember Me',
          style: TextStyle(fontSize: 16, fontFamily: 'OpenSans'),
        ),
        value: isSwitched,
        activeColor: kPrimaryColor,
        onChanged: (bool value) {
          setState(() {
            _onSwitchChanged(value);
          });
        },
      ),
    );
  }
}