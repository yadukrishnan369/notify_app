import 'package:flutter/material.dart';
import 'package:notify_app/widgets/trending_card.dart';

// Trending Section
class TrendingSection extends StatelessWidget {
  const TrendingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Section heading and option to see all
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Trending',
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF2C2C2C),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  'See all',
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF29D177),
                  ),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 12),

        // First row of trending stores
        SizedBox(
          height: 90,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            itemCount: 4,
            separatorBuilder: (context, index) {
              return const SizedBox(width: 10);
            },
            itemBuilder: (context, index) {
              return const TrendingCard(
                imagePath: 'assets/images/trending_icecream.png',
                shopName: 'Mithas Bhandar',
                category: 'Sweets, North Indian',
                location: '(store location)',
                distance: '6.4 kms',
                rating: '4.1',
                deliveryTime: '45 mins',
              );
            },
          ),
        ),

        const SizedBox(height: 14),

        // Second row of trending stores
        SizedBox(
          height: 90,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            itemCount: 4,
            separatorBuilder: (context, index) {
              return const SizedBox(width: 10);
            },
            itemBuilder: (context, index) {
              return const TrendingCard(
                imagePath: 'assets/images/trending_icecream.png',
                shopName: 'Mithas Bhandar',
                category: 'Sweets, North Indian',
                location: '(store location)',
                distance: '6.4 kms',
                rating: '4.1',
                deliveryTime: '45 mins',
              );
            },
          ),
        ),

        const SizedBox(height: 10),
      ],
    );
  }
}
