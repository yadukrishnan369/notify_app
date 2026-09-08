import 'package:flutter/material.dart';
import 'package:notify_app/widgets/notification_error_view.dart';
import 'package:provider/provider.dart';
import 'package:notify_app/providers/notification_provider.dart';
import 'package:notify_app/widgets/notification_header.dart';
import 'package:notify_app/widgets/notification_list.dart';

// Notification Screen
class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  void initState() {
    super.initState();

    // Fetches notifications
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final provider = context.read<NotificationProvider>();

      // Avoids unnecessary API calls when notifications are already loaded
      if (provider.notifications.isEmpty) {
        provider.fetchNotifications();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const NotificationHeader(),

            // Listens to Provider and displays UI based on the current state
            Expanded(
              child: Consumer<NotificationProvider>(
                builder: (context, provider, child) {
                  // Displays progress indicator while fetching data
                  if (provider.isLoading) {
                    return const Center(
                      child: SizedBox(
                        width: 24,
                        height: 24,
                        child: CircularProgressIndicator(
                          color: Color(0xFF2FDF84),
                          strokeWidth: 2.5,
                        ),
                      ),
                    );
                  }

                  // Displays error message with retry option
                  if (provider.errorMessage != null) {
                    return NotificationErrorView(
                      errorMessage: provider.errorMessage!,
                      onRetry: () {
                        provider.fetchNotifications();
                      },
                    );
                  }

                  // Displays empty state when no notifications are available
                  if (provider.notifications.isEmpty) {
                    return const Center(
                      child: Text(
                        'No notifications available',
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 14,
                          color: Color(0xFF969696),
                        ),
                      ),
                    );
                  }

                  // Displays the notification list after a successful fetch
                  return NotificationList(
                    notifications: provider.notifications,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
