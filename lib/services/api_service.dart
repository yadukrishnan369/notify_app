import 'dart:convert';
import 'dart:isolate';
import 'package:http/http.dart' as http;
import 'package:notify_app/models/notification_model.dart';

class ApiServices {
  // API endpoint used to fetch notification data
  static const String _url =
      'https://raw.githubusercontent.com/shabeersha/test-api/main/test-notifications.json';

  // Fetches notification data from the remote API
  Future<List<NotificationModel>> fetchNotifications() async {
    final response = await http.get(Uri.parse(_url));

    if (response.statusCode == 200) {
      // Creates a ReceivePort to receive data from the new isolate
      final receivePort = ReceivePort();

      // Creates a new isolate for JSON parsing
      await Isolate.spawn(_parseNotifications, [
        receivePort.sendPort,
        response.body,
      ]);

      // Waits for the parsed notification list from the isolate
      final result = await receivePort.first;

      return result as List<NotificationModel>;
    } else if (response.statusCode == 401) {
      throw Exception('Authentication failed.');
    } else if (response.statusCode == 404) {
      throw Exception('Notification data not found.');
    } else if (response.statusCode == 500) {
      throw Exception('Server error.');
    } else {
      throw Exception('Failed to load notifications. ${response.statusCode}');
    }
  }

  // Parses JSON data inside a separate isolate
  static void _parseNotifications(List<dynamic> arguments) {
    final SendPort sendPort = arguments[0];
    final String responseBody = arguments[1];

    final Map<String, dynamic> decodedData = jsonDecode(responseBody);

    final List<dynamic> data = decodedData['data'];

    final List<NotificationModel> notifications = data
        .map((item) => NotificationModel.fromJson(item as Map<String, dynamic>))
        .toList();

    // Sends the parsed data back to the main isolate
    sendPort.send(notifications);
  }
}
