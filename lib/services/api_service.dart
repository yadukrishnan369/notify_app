import 'dart:convert';
import 'package:flutter/foundation.dart';
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
      // Parses the large JSON response in a background isolate
      // to avoid blocking the main UI thread
      return compute(_parseNotifications, response.body);
    } else {
      throw Exception('Failed to load notifications.');
    }
  }

  // Converts the API response into a list of NotificationModel objects
  List<NotificationModel> _parseNotifications(String responseBody) {
    final Map<String, dynamic> decodedData = jsonDecode(responseBody);

    final List<dynamic> data = decodedData['data'];

    return data
        .map((item) => NotificationModel.fromJson(item as Map<String, dynamic>))
        .toList();
  }
}
