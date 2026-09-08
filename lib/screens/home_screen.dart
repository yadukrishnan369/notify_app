import 'package:flutter/material.dart';
import 'package:notify_app/widgets/craze_deals_section.dart';
import 'package:notify_app/widgets/custom_bottom_nav_bar.dart';
import 'package:notify_app/widgets/home_category_section.dart';
import 'package:notify_app/widgets/home_search_section.dart';
import 'package:notify_app/widgets/location_header.dart';
import 'package:notify_app/widgets/nearby_stores_section.dart';
import 'package:notify_app/widgets/refer_earn_section.dart';
import 'package:notify_app/widgets/top_picks_section.dart';
import 'package:notify_app/widgets/trending_section.dart';

// Home Screen
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        // make home content vertically scrollable
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Location Header Section
                    LocationHeader(),
                    SizedBox(height: 28),

                    // Home Search Section
                    HomeSearchSection(),
                    SizedBox(height: 32),

                    // Home Category Section
                    HomeCategorySection(),
                    SizedBox(height: 16),
                  ],
                ),
              ),
              // Top Picks Section
              TopPicksSection(),

              SizedBox(height: 28),

              // Trending Section
              TrendingSection(),

              SizedBox(height: 20),

              // Craze Deals Section
              CrazeDealsSection(),

              SizedBox(height: 24),

              // Refer Earn Section
              ReferEarnSection(),

              SizedBox(height: 32),

              // Nearby Stores Section
              NearbyStoresSection(),

              SizedBox(height: 40),
            ],
          ),
        ),
      ),

      // bottom navigation bar
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
