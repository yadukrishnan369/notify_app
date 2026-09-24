import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notify_app/routes/app_routes.dart';

// Home Search/ notification/ offer tag Section
class HomeSearchSection extends StatelessWidget {
  const HomeSearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Search Field
          Expanded(
            child: SizedBox(
              height: 48,
              child: TextField(
                style: const TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 13.5,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF1E1E1E),
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFFEEEEEE),
                  hintText: 'Search for products/stores',
                  hintStyle: const TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF969696),
                  ),
                  isDense: true,
                  contentPadding: const EdgeInsets.only(
                    left: 12,
                    top: 14,
                    bottom: 14,
                    right: 8,
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: SvgPicture.asset(
                      'assets/icons/search.svg',
                      width: 20,
                      height: 20,
                      fit: BoxFit.contain,
                    ),
                  ),
                  suffixIconConstraints: const BoxConstraints(
                    minWidth: 32,
                    minHeight: 20,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(width: 14),

          // Notification Icon
          SizedBox(
            width: 25,
            height: 25,
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                // Opens the Notifications screen
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      AppRoutes.notifications,
                      arguments: 'Notifications',
                    );
                  },
                  child: SvgPicture.asset(
                    'assets/icons/notification.svg',
                    width: 25,
                    height: 25,
                    fit: BoxFit.contain,
                  ),
                ),

                // notification static count badge
                Positioned(
                  top: -2,
                  right: -2,
                  child: Container(
                    width: 16,
                    height: 16,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFF0000),
                      shape: BoxShape.circle,
                    ),
                    child: const Text(
                      '2',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        height: 1.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 18),

          // Offer Tag Icon
          SvgPicture.asset(
            'assets/icons/offer_tag.svg',
            width: 25,
            height: 25,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
