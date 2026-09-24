import 'package:flutter/material.dart';

// Notifications screen header
class NotificationHeader extends StatelessWidget {
  const NotificationHeader({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
          child: Row(
            children: [
              // Navigates back to the previous screen
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  width: 28,
                  height: 28,
                  decoration: const BoxDecoration(
                    color: Color(0xFF2FDF84),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.arrow_back,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ),

              const SizedBox(width: 18),
              // Title
              Text(
                title,
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF323232),
                ),
              ),
            ],
          ),
        ),

        // divider below the header
        Container(
          height: 1.0,
          decoration: const BoxDecoration(
            color: Color(0xFFC8C8C8),
            boxShadow: [
              BoxShadow(
                color: Color(0x50000000),
                offset: Offset(0, 0.5),
                blurRadius: 1,
                spreadRadius: 0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
