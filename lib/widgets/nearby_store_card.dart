import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Nearby Store Card
class NearbyStoreCard extends StatelessWidget {
  const NearbyStoreCard({
    super.key,
    required this.imagePath,
    required this.storeName,
    required this.category,
    required this.location,
    required this.distance,
    required this.rating,
    required this.deliveryTime,
    required this.offerText,
    required this.itemsAvailable,
  });

  // Store information
  final String imagePath;
  final String storeName;
  final String category;
  final String location;
  final String distance;
  final String rating;
  final String deliveryTime;
  final String offerText;
  final String itemsAvailable;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Store Image Thumbnail
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            imagePath,
            width: 75,
            height: 80,
            fit: BoxFit.cover,
          ),
        ),

        const SizedBox(width: 8),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Store Name & Rating Row
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      storeName,
                      style: const TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF323232),
                        height: 1.2,
                      ),
                    ),
                  ),
                  const SizedBox(width: 6),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.star,
                        size: 14,
                        color: Color(0xFF505050),
                      ),
                      const SizedBox(width: 3),
                      Text(
                        rating,
                        style: const TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF505050),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 3),

              // Category & Delivery Time Row
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      category,
                      style: const TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF474747),
                      ),
                    ),
                  ),
                  const SizedBox(width: 6),
                  Text(
                    deliveryTime,
                    style: const TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFEA7E00),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 0),

              // Location & Distance
              Text(
                '$location  |  $distance',
                style: const TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF474747),
                ),
              ),

              const SizedBox(height: 5),

              // "Top Store" Chip
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 5),
                decoration: BoxDecoration(
                  color: const Color(0x2641529F),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Text(
                  'Top Store',
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 9,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF505050),
                    height: 1.1,
                  ),
                ),
              ),

              const SizedBox(height: 8),

              const Divider(height: 1, thickness: 1, color: Color(0xFFE8E8E8)),

              const SizedBox(height: 8),

              // Offer and Available Items Row
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/offer.svg',
                    width: 16,
                    height: 16,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    offerText,
                    style: const TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 10.5,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF323232),
                    ),
                  ),
                  const SizedBox(width: 8),
                  SvgPicture.asset(
                    'assets/icons/items_available.svg',
                    width: 16,
                    height: 16,
                  ),
                  const SizedBox(width: 4),
                  Expanded(
                    // Prevents text from overflowing
                    child: Text(
                      itemsAvailable,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 10.5,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF323232),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
