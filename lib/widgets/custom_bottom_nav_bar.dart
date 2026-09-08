import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Custom bottom navigation bar
class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Color(0xFFE5E5E5), width: 2)),

        // shadow above the bottom navigation bar
        boxShadow: [
          BoxShadow(
            color: Color(0x1A000000),
            offset: Offset(0, -1),
            blurRadius: 4,
            spreadRadius: 0,
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            children: [
              _buildNavItem(
                iconPath: 'assets/icons/home.svg',
                label: 'Home',
                isSelected: true,
              ),
              _buildNavItem(
                iconPath: 'assets/icons/cart.svg',
                label: 'Cart',
                isSelected: false,
              ),
              _buildNavItem(
                iconPath: 'assets/icons/my_order.svg',
                label: 'My Order',
                isSelected: false,
              ),
              _buildNavItem(
                iconPath: 'assets/icons/account.svg',
                label: 'Account',
                isSelected: false,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // reusable navigation item
  Widget _buildNavItem({
    required String iconPath,
    required String label,
    required bool isSelected,
  }) {
    final Color iconColor = isSelected
        ? const Color(0xFF29D177)
        : const Color(0xFF7D7D7D);

    final Color textColor = isSelected
        ? const Color(0xFF555555)
        : const Color(0xFF7D7D7D);

    final FontWeight fontWeight = isSelected
        ? FontWeight.w800
        : FontWeight.w700;

    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        // item icon
        children: [
          SvgPicture.asset(
            iconPath,
            width: 24,
            height: 24,
            fit: BoxFit.contain,
            colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
          ),
          const SizedBox(height: 4),
          // item label
          Text(
            label,
            style: TextStyle(
              fontFamily: 'Quicksand',
              fontSize: 12,
              fontWeight: fontWeight,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
