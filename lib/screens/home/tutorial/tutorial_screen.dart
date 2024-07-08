import 'package:carpalizer/components/graph/upsite_title.dart';
import 'package:carpalizer/import/import.dart';

class TutorialScreen extends StatefulWidget {
  const TutorialScreen({Key? key}) : super(key: key);
  @override
  State<TutorialScreen> createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
      backgroundColor: kPrimaryColor,
      body: Container(
        color: kPrimaryColor,
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                UpsideTitle(
                  title: 'CARPALIZER',
                  description: 'SMART GLOVE',
                  back: true,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: size.height / 7,
                  ),
                  child: Container(
                    height: size.height / 1.22,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(top: 20),
                        child: ListView(
                      children: [
                        ContentCards(
                            height: 160,
                            title: "Pendaftaran akun",
                            image: "assets/contents/login.png",
                            description:
                                "Install Aplikasi carpalizer dengan cara mengunduhnya di playstore\n"
                                "\nBuat akun baru : pilih daftar dan masukkan data-data yang diminta, mulai dari nama, Alamat, nomor telephone atau nomor whatsapp dan email",
                            link: () {},
                            color: kPrimaryDarkColor,
                            icon: false,
                            titleColor: kPrimaryDarkColor),
                        ContentCards(
                            height: 190,
                            title: "Menghubungkan perangkat",
                            image: "assets/illustrations/connect.png",
                            description:
                                "Persiapkan perangkat : pastikan ESP32 dan sensor EMG serta elektroda sudah saling di hubungkan dengan kabel jumper dan sudah di konfigurasi\n"
                                "\nPasang elektroda pada kedua pergelangan tangan\n"
                                "\nPastikan ESP32 sudah terhubung ke wifi dan sudah bisa mengakses internet,",
                            link: () {},
                            color: kPrimaryDarkColor,
                            icon: false,
                            titleColor: kPrimaryDarkColor),
                        ContentCards(
                            height: 180,
                            title: "Singkronisasi perangkat dan aplikasi ",
                            image: "assets/illustrations/phone.png",
                            description:
                                "Buka aplikasi carpalizer dan masuk dengan akun yang sudah di buat sebelumnya\n"
                                "\nPastikan status pairing sukses pada aplikasi\n"
                                "\nPastikan line chart pada aplikasi berjalan yang menandakan aplikasi membaca data dari ESP32",
                            link: () {},
                            color: kPrimaryDarkColor,
                            icon: false,
                            titleColor: kPrimaryDarkColor),
                        ContentCards(
                            title: "4.Monitoring Aktivitas Otot",
                            image: "assets/illustrations/graph.png",
                            description:
                                "Melihat tampilan Ritme otot : beralih ke page graph dan lihat apakah line chart menampilkan ritme otot pergelngan tangan kanan dan kiri dengan benar",
                            link: () {},
                            color: kPrimaryDarkColor,
                            icon: false,
                            titleColor: kPrimaryDarkColor),
                        ContentCards(
                            height: 180,
                            title: "Notifikasi dan Pencegahan CTS",
                            image: "assets/illustrations/notif.png",
                            description:
                                "Notifkasi 2 jam Aktivitas : setelah 2 jam secara intens pengguna melakukan suatu aktivitas , aplikasi akan memberikan notifkasi untuk istirahat\n"
                                "\nNotifikasi indikasi CTS : jika terindikasi CTS, aplikasi akan memberikan notifikasi dengan saran perawatan",
                            link: () {},
                            color: kPrimaryDarkColor,
                            icon: false,
                            titleColor: kPrimaryDarkColor),
                        ContentCards(
                            height: 180,
                            title: "Mematikan aplikasi ",
                            image: "assets/illustrations/done.png",
                            description:
                            "Setelah selesai menggunakan aplikasi elektroda, sensor EMG dan ESP32 bisa langsung di lepas dan pengguna bisa langsung keluar dari aplikasi.\n"
                                "\nData-data penggunaan akan terekam di aplikasi dan dapat di lihat Kembali oleh pengguna",
                            link: () {},
                            color: kPrimaryDarkColor,
                            icon: false,
                            titleColor: kPrimaryDarkColor),
                      ],
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
