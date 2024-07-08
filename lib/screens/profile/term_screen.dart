import 'package:carpalizer/components/graph/upsite_title.dart';
import 'package:carpalizer/import/import.dart';

class TermScreen extends StatelessWidget {
  const TermScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text('Term Of Use'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            Text(
              "Terms of Use - Syarat Penggunaan",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
                  "Pendahuluan\n"
                  "Terima kasih telah menggunakan layanan kami. Mohon membaca Syarat Penggunaan ini dengan seksama sebelum menggunakan aplikasi atau layanan kami.\n"
                  "\n1. Penggunaan Layanan\n"
                  "Registrasi dan Akun: Untuk menggunakan layanan kami, Anda mungkin perlu membuat akun. Pastikan informasi yang Anda berikan akurat dan terkini."
                  "\nKewajiban Pengguna: Anda bertanggung jawab penuh atas aktivitas yang terjadi pada akun Anda. Jangan membagikan informasi akun Anda kepada orang lain."
                  "\nPenggunaan yang Dilarang: Dilarang menggunakan layanan kami untuk tujuan ilegal atau yang melanggar hak privasi atau keamanan orang lain.\n"
                  "\n2. Privasi dan Keamanan\n "
                  "Privasi Data: Kami menghormati privasi Anda. Data yang Anda berikan akan diatur sesuai dengan Kebijakan Privasi kami."
                  "\nKeamanan Akun: Lindungi akun Anda dengan memilih kata sandi yang kuat dan tidak membagikan informasi akun kepada orang lain.\n"
                  "\n3. Konten Pengguna\n"
                  "Kepemilikan Konten: Anda bertanggung jawab atas konten yang Anda unggah ke platform kami. Pastikan Anda memiliki hak untuk menggunakan konten tersebut."
                  "\nKonten yang Dilarang: Dilarang mengunggah konten yang mengandung kebencian, kekerasan, atau melanggar hak kekayaan intelektual orang lain.\n"
                  "\n4. Perlindungan Hak Kekayaan Intelektual\n"
                  "Hak Cipta: Hak cipta dari konten yang kami sediakan atau hasilkan sepenuhnya milik kami atau pihak ketiga yang memberikan izin kepada kami.\n"
                  "\n5. Penutup\n"
                  "Perubahan Syarat: Syarat Penggunaan ini dapat berubah dari waktu ke waktu. Pastikan untuk memeriksa kembali halaman Syarat Penggunaan secara berkala."
                  "\nKontak Kami: Jika Anda memiliki pertanyaan atau masalah terkait Syarat Penggunaan ini, silakan hubungi tim dukungan kami.\n"
                  "\nKesimpulan\n"
                  "Dengan menggunakan layanan kami, Anda setuju untuk mematuhi Syarat Penggunaan ini. Silakan hubungi kami jika Anda memiliki pertanyaan lebih lanjut atau butuh bantuan. Terima kasih telah membaca dan memahami Syarat Penggunaan kami.",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

