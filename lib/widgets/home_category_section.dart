import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notify_app/widgets/category_item.dart';

// Home Category Section
class HomeCategorySection extends StatelessWidget {
  const HomeCategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // section title
        const Text(
          'What would you like to do today?',
          style: TextStyle(
            fontFamily: 'Quicksand',
            fontSize: 18,
            fontWeight: FontWeight.w700,
            height: 1,
            color: Color(0xFF323232),
          ),
        ),

        const SizedBox(height: 18),

        // first row service categories
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CategoryItem(
              title: 'Food Delivery',
              iconPath: 'assets/icons/food_delivery.svg',
              showDiscount: true,
            ),
            CategoryItem(
              title: 'Medicines',
              iconPath: 'assets/icons/medicines.svg',
              showDiscount: true,
            ),
            CategoryItem(
              title: 'Pet Supplies',
              iconPath: 'assets/icons/pets.svg',
              showDiscount: true,
            ),
            CategoryItem(title: 'Gifts', iconPath: 'assets/icons/gifts.svg'),
          ],
        ),

        const SizedBox(height: 16),

        // Second row service categories
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CategoryItem(title: 'Meat', iconPath: 'assets/icons/meat.svg'),
            CategoryItem(
              title: 'Cosmetic',
              iconPath: 'assets/icons/cosmetic.svg',
            ),
            CategoryItem(
              title: 'Stationery',
              iconPath: 'assets/icons/stationery.svg',
            ),
            CategoryItem(
              title: 'Stores',
              iconPath: 'assets/icons/stores.svg',
              showDiscount: true,
            ),
          ],
        ),

        const SizedBox(height: 12),

        // viewing additional categories icon
        Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'More',
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  height: 1,
                  color: Color(0xFF06C25E),
                ),
              ),
              const SizedBox(width: 5),
              SvgPicture.asset(
                'assets/icons/dropdown_arrow.svg',
                width: 4,
                height: 7,
                colorFilter: const ColorFilter.mode(
                  Color(0xFF29D177),
                  BlendMode.srcIn,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
