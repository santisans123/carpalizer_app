import 'package:carpalizer/import/import.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Container(
        color: kPrimaryColor,
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                UpsideProfile(
                  imgUrl: "assets/contents/foto-profile.jpg",
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: size.height / 6,
                  ),
                  child: Container(
                    height: size.height / 1.3,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: size.width * 0.06,
                            vertical: size.width * 0.04),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 12,
                            ),
                            TitleAuth(
                              title: "Profile",
                              description:
                                  "Lakukan Pengaturan Pada Profile Anda",
                            ),

                            const SizedBox(
                              height: 12,
                            ), // Spasi antara profil dan opsi
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 1,
                                    blurRadius: 5,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // General Section
                                  Text(
                                    'General',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  _buildOption(
                                      context, Icons.edit,
                                      'Edit Profile',
                                      'Change name, number, email',
                                          () {
                                            Get.to(EditProfileScreen());
                                    // Logika untuk Edit Profile
                                  }),
                                  _buildOption(
                                      context, Icons.description, 'Term of Use',
                                      'Protect Your Account',
                                      () {
                                        Get.to(TermScreen());

                                  }), // Spasi antara General dan Preference
                                ],
                              ),
                            ),

                            Container(
                              margin: EdgeInsets.only(top: 20),
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 1,
                                    blurRadius: 5,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // General Section
                                  Text(
                                    'Preferences',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  _buildOption(
                                      context, Icons.warning, 'FaQ',
                                      'Questions and answers application',
                                      () {
                                    // Logika untuk Update Password
                                  }),
                                  _buildOption(
                                      context, Icons.phone_callback, 'Kontak Admin',
                                      'Ask questions directly to the admin',
                                          () {
                                        // Logika untuk Update Password
                                      }),
                                  _buildOption(
                                      context, Icons.logout, 'Log Out',
                                      'Securely Logout Account',
                                      () {
                                        Get.offAll(LoginScreen());
                                  }), // Spasi antara General dan Preference
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildOption(
    BuildContext context, IconData icon, String title, String subtitle, VoidCallback onTap) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 0.5),
    child: Container(
      child: ListTile(
        leading: Icon(icon, color: kPrimaryDarkColor),
        title: Text(title),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: Colors.grey,
          size: 18,
        ),
        subtitle: Text(subtitle, style: TextStyle(
          color: kPrimaryDarkGreyColor
        )),
        onTap: onTap,
      ),
    ),
  );
}
