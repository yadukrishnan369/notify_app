import 'package:flutter/material.dart';
import 'package:notify_app/models/notification_model.dart';
import 'package:notify_app/widgets/notification_item.dart';

// Notification List
class NotificationList extends StatelessWidget {
  const NotificationList({super.key, required this.notifications});

  final List<NotificationModel> notifications;

  @override
  Widget build(BuildContext context) {
    // Builds notification items
    return ListView.builder(
      itemCount: notifications.length,
      itemBuilder: (context, index) {
        return NotificationItem(notification: notifications[index]);
      },
    );
  }
}
