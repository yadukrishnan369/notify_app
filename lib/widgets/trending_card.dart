import 'package:flutter/material.dart';

// Trending Card
class TrendingCard extends StatelessWidget {
  const TrendingCard({
    super.key,
    required this.imagePath,
    required this.shopName,
    required this.category,
    this.location = 'Site No - 1',
    required this.distance,
    required this.rating,
    required this.deliveryTime,
  });

  // Store information
  final String imagePath;
  final String shopName;
  final String category;
  final String location;
  final String distance;
  final String rating;
  final String deliveryTime;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 270,
      height: 88,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Thumbnail Image
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imagePath,
              width: 72,
              height: 82,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(width: 10),

          // Details Column
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Shop Name
                Text(
                  shopName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF323232),
                    height: 1.1,
                  ),
                ),

                const SizedBox(height: 3),

                // Category
                Text(
                  category,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 12.5,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF666666),
                    height: 1.1,
                  ),
                ),

                const SizedBox(height: 3),

                // Location & Distance
                Text(
                  '$location  |  $distance',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 12.5,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF666666),
                    height: 1.1,
                  ),
                ),

                const SizedBox(height: 4),

                // Rating & Delivery Time Row
                Row(
                  children: [
                    const Icon(Icons.star, size: 13, color: Color(0xFF4A4A4A)),
                    const SizedBox(width: 3),
                    Text(
                      rating,
                      style: const TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF4A4A4A),
                      ),
                    ),
                    const SizedBox(width: 6),
                    const Text(
                      '|',
                      style: TextStyle(fontSize: 14, color: Color(0xFF8E8E8E)),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      deliveryTime,
                      style: const TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF666666),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
