import 'package:carpalizer/import/import.dart';

class NotificationDetailScreen extends StatelessWidget {
  final String title;
  final String description;
  final String time;

  const NotificationDetailScreen({
    Key? key,
    required this.title,
    required this.description,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text('Notification Detail'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'Received at: $time',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

