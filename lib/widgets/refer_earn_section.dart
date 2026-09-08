import 'package:flutter/material.dart';

// Refer Earn Section
class ReferEarnSection extends StatelessWidget {
  const ReferEarnSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Container(
        width: double.infinity,
        height: 84,
        decoration: BoxDecoration(
          color: const Color(0xFF29D177),
          borderRadius: BorderRadius.circular(10),
        ),
        clipBehavior: Clip.antiAlias,
        child: Stack(
          children: [
            // Referral section title
            const Positioned(
              left: 24,
              top: 18,
              child: Text(
                'Refer & Earn',
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  height: 1,
                  color: Color(0xFFF2F2F2),
                ),
              ),
            ),

            // referral offer text and forward arrow
            Positioned(
              left: 10,
              top: 40,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFE8E8E8),
                      ),
                      children: [
                        TextSpan(text: 'Invite your friends & earn '),
                        TextSpan(
                          text: '15% off',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(width: 12),

                  Container(
                    width: 16,
                    height: 16,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.center,
                    child: const Icon(
                      Icons.arrow_forward,
                      size: 10,
                      color: Color(0xFF29D177),
                    ),
                  ),
                ],
              ),
            ),

            // gift image
            Positioned(
              right: 12,
              top: 10,
              bottom: 8,
              child: Image.asset(
                'assets/images/refer_earn_gift.png',
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
