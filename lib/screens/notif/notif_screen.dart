import 'package:carpalizer/import/import.dart';

class NotifScreen extends StatefulWidget {
  const NotifScreen({Key? key}) : super(key: key);
  @override
  State<NotifScreen> createState() => _NotifScreenState();
}

class _NotifScreenState extends State<NotifScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text('Notifications'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          NotificationCard(
            title: ' Waktu Istirahat!',
            message: 'Sudah saatnya beristirahat.',
            description: 'Beristirahatlah selama 10 menit dan lakukan latihan ringan untuk mencegah kelelahan pergelangan tangan.',
            time: '18:00',
            isNew: true,
          ),
          SizedBox(height: 16),
          NotificationCard(
            title: 'Perhatian: Perawatan CTS',
            message: 'Gejala CTS terdeteksi.',
            description: 'Ambil istirahat sejenak dan lakukan peregangan serta kompres dengan air dingin pada pergelangan tangan Anda.',
            time: '16:30',
            isNew: false,
          ),
          SizedBox(height: 16),
          NotificationCard(
            title: ' Istirahat Sekarang!',
            message: 'Sudah 2 jam bermain.',
            description: 'Waktunya beristirahat selama 10 menit. Lakukan peregangan pergelangan tangan untuk mencegah CTS.',
            time: '14:00',
            isNew: false,
          ),

        ],
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  final String title;
  final String message;
  final String description;
  final String time;
  final bool isNew;

  const NotificationCard({
    Key? key,
    required this.title,
    required this.message,
    required this.description,
    required this.time,
    required this.isNew,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(NotificationDetailScreen(
          title: title,
          description: description,
          time: time,
        ));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  if (isNew)
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: kPrimaryDarkColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'New',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                ],
              ),
              SizedBox(height: 8),
              Text(
                message,
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 8),
              Text(
                time,
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
