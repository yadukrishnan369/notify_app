import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Location Header
class LocationHeader extends StatelessWidget {
  const LocationHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Displays the location icon
        SvgPicture.asset(
          'assets/icons/location.svg',
          width: 16,
          height: 20,
          fit: BoxFit.contain,
        ),

        const SizedBox(width: 8),
        // Location name
        const Text(
          'ABCD, New Delhi',
          style: TextStyle(
            fontFamily: 'Quicksand',
            fontSize: 15,
            fontWeight: FontWeight.w700,
            height: 1.0,
            color: Color(0xFF1E1E1E),
          ),
        ),

        const SizedBox(width: 12),

        // Dropdown icon
        SvgPicture.asset(
          'assets/icons/dropdown_arrow.svg',
          width: 6,
          height: 9,
          fit: BoxFit.contain,
        ),
      ],
    );
  }
}
