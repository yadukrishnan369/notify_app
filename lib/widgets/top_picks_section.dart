import 'package:flutter/material.dart';

// Top Picks Section
class TopPicksSection extends StatelessWidget {
  const TopPicksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          // Section title
          child: Text(
            'Top picks for you',
            style: TextStyle(
              fontFamily: 'Quicksand',
              fontSize: 20,
              fontWeight: FontWeight.w700,
              height: 1,
              color: Color(0xFF323232),
            ),
          ),
        ),

        const SizedBox(height: 17),

        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SizedBox(
            height: 171,

            // promotional cards
            child: PageView(
              controller: PageController(viewportFraction: 0.985),
              padEnds: false,
              children: [
                // promotional card 1
                Padding(
                  padding: const EdgeInsets.only(right: 14),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF06C25E),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    clipBehavior: Clip.antiAlias,

                    // promotional cards image
                    child: Stack(
                      children: [
                        Positioned(
                          right: 8,
                          top: 2,
                          bottom: 0,
                          child: Image.asset(
                            'assets/images/top_pick_fruits.png',
                            fit: BoxFit.contain,
                          ),
                        ),

                        // discount text
                        const Positioned(
                          left: 20,
                          top: 42,
                          child: SizedBox(
                            width: 110,
                            child: Text(
                              'DISCOUNT\n25% ALL\nFRUITS',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                height: 1.26,
                                letterSpacing: 0.85,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),

                        // Check now button
                        Positioned(
                          left: 20,
                          bottom: 23,
                          child: SizedBox(
                            width: 130,
                            height: 28,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                elevation: 0,
                                backgroundColor: const Color(0xFFFF8918),
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(3),
                                ),
                              ),
                              child: const Text(
                                'CHECK NOW',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.8,
                                  height: 1,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // promotional card 2
                Padding(
                  padding: const EdgeInsets.only(right: 18),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF685BCB),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    clipBehavior: Clip.antiAlias,
                    // promotional cards image
                    child: Stack(
                      children: [
                        Positioned(
                          right: 8,
                          top: 2,
                          bottom: 0,
                          child: Image.asset(
                            'assets/images/top_pick_fruits.png',
                            fit: BoxFit.contain,
                          ),
                        ),

                        // discount text
                        const Positioned(
                          left: 20,
                          top: 42,
                          child: SizedBox(
                            width: 110,
                            child: Text(
                              'DISCOUNT\n25% ALL\nFRUITS',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                height: 1.26,
                                letterSpacing: 0.85,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),

                        // Check now button
                        Positioned(
                          left: 20,
                          bottom: 23,
                          child: SizedBox(
                            width: 130,
                            height: 28,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                elevation: 0,
                                backgroundColor: const Color(0xFFFF8918),
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(3),
                                ),
                              ),
                              child: const Text(
                                'CHECK NOW',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.8,
                                  height: 1,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
