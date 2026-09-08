import 'package:flutter/material.dart';
import 'package:notify_app/models/notification_model.dart';

// Notification item
class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key, required this.notification});

  final NotificationModel notification;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Loads the image using the image name received from the API
              Image.asset(
                'assets/images/${notification.image}',
                width: 34,
                height: 34,
                fit: BoxFit.contain,
              ),

              const SizedBox(width: 14),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // notification title
                    Text(
                      notification.title,
                      style: const TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF474747),
                      ),
                    ),

                    const SizedBox(height: 5),

                    // notification message
                    Text(
                      notification.body,
                      style: const TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        height: 1.4,
                        color: Color(0xFF727272),
                      ),
                    ),

                    const SizedBox(height: 7),

                    // notification relative time
                    Text(
                      _formatTime(notification.timestamp),
                      style: const TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF969696),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        const Divider(height: 1, thickness: 1, color: Color(0xFFD2D2D2)),
      ],
    );
  }

  // Converts the notification timestamp into a readable relative time
  String _formatTime(DateTime timestamp) {
    final difference = DateTime.now().difference(timestamp);

    if (difference.inMinutes < 60) {
      return '${difference.inMinutes} mins ago';
    }

    if (difference.inHours < 24) {
      return '${difference.inHours} hours ago';
    }

    if (difference.inDays < 30) {
      return '${difference.inDays} days ago';
    }

    if (difference.inDays < 365) {
      // Converts the total number of days into months
      final months = difference.inDays ~/ 30;
      return '$months ${months == 1 ? 'month' : 'months'} ago';
    }

    // Converts older notification timestamps into years
    final years = difference.inDays ~/ 365;
    return '$years ${years == 1 ? 'year' : 'years'} ago';
  }
}
