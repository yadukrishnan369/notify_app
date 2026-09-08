import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Category Item
class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.title,
    required this.iconPath,
    this.showDiscount = false,
  });

  final String title;
  final String iconPath;

  final bool showDiscount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 62,
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              // Category Card
              Container(
                width: 62,
                height: 62,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF323232).withValues(alpha: 0.15),
                      offset: const Offset(0, 2),
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Center(
                  child: SvgPicture.asset(iconPath, width: 40, height: 40),
                ),
              ),

              // discount badge
              if (showDiscount)
                Positioned(
                  top: -1,
                  right: -2,
                  child: Container(
                    width: 43,
                    height: 14,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xFF9C37EC),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Text(
                      '10% Off',
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 7,
                        fontWeight: FontWeight.w500,
                        height: 1,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
            ],
          ),

          const SizedBox(height: 7),

          // Category name
          SizedBox(
            height: 32,
            child: Center(
              child: Text(
                title,
                textAlign: TextAlign.center,
                maxLines: 2,
                style: const TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                  height: 1.1,
                  color: Color(0xFF323232),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
