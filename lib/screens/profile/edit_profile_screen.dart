import 'package:carpalizer/import/import.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);
  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final telpController = TextEditingController();
  final addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor, // Sesuaikan dengan warna primer aplikasi Anda
        title: Text('Edit Profile'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Container(
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
                    horizontal: size.width * 0.08, vertical: size.width * 0.04),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Form(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RoundedInput(
                            textTitle: "Nama Lengkap",
                            hintText: "nama",
                            type: TextInputType.text,
                            icon: Icons.person,
                            controller: nameController,
                          ),
                          RoundedInput(
                            textTitle: "Alamat",
                            hintText: "Jl. No. Rt. Rw.",
                            type: TextInputType.text,
                            icon: Icons.map_sharp,
                            controller: addressController,
                            maxLine: 4,
                          ),
                          RoundedInput(
                            textTitle: "Email",
                            hintText: "@email",
                            type: TextInputType.emailAddress,
                            icon: Icons.email,
                            controller: emailController,
                          ),
                          RoundedInput(
                            textTitle: "No Telepon",
                            hintText: "No Telp",
                            type: TextInputType.number,
                            icon: Icons.phone,
                            controller: telpController,
                          ),
                          SizedBox(height: 25),
                          RoundedButton(
                            text: "Edit Profile",
                            color: kPrimaryColor,
                            press: () {
                              Get.to(LoginScreen());
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
