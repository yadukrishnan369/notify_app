import 'package:flutter/material.dart';
import 'package:notify_app/widgets/nearby_store_card.dart';

// Nearby Stores Section
class NearbyStoresSection extends StatelessWidget {
  const NearbyStoresSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section title and view all nearby stores
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Expanded(
                child: Text(
                  'Nearby stores',
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 19,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF2C2C2C),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  'See all',
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF29D177),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 18),

          // First Store Card
          const NearbyStoreCard(
            imagePath: 'assets/images/nearby_store.png',
            storeName: 'Freshly Baker',
            category: 'Sweets, North Indian',
            location: 'Site No - 1',
            distance: '6.4 kms',
            rating: '4.1',
            deliveryTime: '45 mins',
            offerText: 'Upto 10% OFF',
            itemsAvailable: '3400+ items available',
          ),

          const SizedBox(height: 30),

          // Second Store Card
          const NearbyStoreCard(
            imagePath: 'assets/images/nearby_store.png',
            storeName: 'Freshly Baker',
            category: 'Sweets, North Indian',
            location: 'Site No - 1',
            distance: '6.4 kms',
            rating: '4.1',
            deliveryTime: '45 mins',
            offerText: 'Upto 10% OFF',
            itemsAvailable: '3400+ items available',
          ),

          const SizedBox(height: 55),

          // Button for navigating to the complete list of stores
          Center(
            child: SizedBox(
              width: 240,
              height: 44,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: const Color(0xFF29D177),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'View all stores',
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
