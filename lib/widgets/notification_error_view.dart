import 'package:flutter/material.dart';

// Displays user-friendly error message
class NotificationErrorView extends StatelessWidget {
  const NotificationErrorView({
    super.key,
    required this.errorMessage,
    required this.onRetry,
  });

  final String errorMessage;

  // triggered when the user taps the Retry button
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Error message
          Text(
            errorMessage,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'Quicksand',
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xFF323232),
            ),
          ),
          const SizedBox(height: 16),

          // Button for retry
          ElevatedButton(
            onPressed: onRetry,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF2FDF84),
              foregroundColor: Colors.white,
            ),
            child: const Text(
              'Retry',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
