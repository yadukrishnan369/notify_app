import 'package:flutter/material.dart';

// Craze Deals Section
class CrazeDealsSection extends StatelessWidget {
  const CrazeDealsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Section heading
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Craze deals',
            style: TextStyle(
              fontFamily: 'Quicksand',
              fontSize: 20,
              fontWeight: FontWeight.w700,
              height: 1,
              color: Color(0xFF323232),
            ),
          ),
        ),

        const SizedBox(height: 14),

        // list of promotional banners
        SizedBox(
          height: 160,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,

            padding: const EdgeInsets.only(left: 20),

            itemCount: 2,

            separatorBuilder: (context, index) {
              return const SizedBox(width: 12);
            },

            itemBuilder: (context, index) {
              // Craze Deal Card
              return const _CrazeDealCard();
            },
          ),
        ),
      ],
    );
  }
}

// reusable card craze deals
class _CrazeDealCard extends StatelessWidget {
  const _CrazeDealCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 160,
      decoration: BoxDecoration(
        color: const Color(0xFF1F1F1F),
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          // Vegetable image
          Positioned(
            right: 0,
            top: 0,
            bottom: 0,
            child: Image.asset(
              'assets/images/craze_deals_vegetables.png',
              fit: BoxFit.contain,
            ),
          ),

          // Main promotional text
          const Positioned(
            left: 20,
            top: 28,
            child: SizedBox(
              width: 190,
              child: Text(
                'Customer favourite\ntop supermarkets',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  height: 1.65,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          // Explore action
          const Positioned(
            left: 20,
            bottom: 35,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Explore',
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFFF8918),
                  ),
                ),

                SizedBox(width: 6),

                Icon(Icons.arrow_forward, size: 20, color: Color(0xFFFF8918)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
