import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';
import 'package:travel_app/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List<String> images = [
    "welcome-one.png",
    "welcome-two.png",
    "welcome-three.png",
  ];

  List<String> quotes = [
    "Mountain hikes give you an incredible sense of freedom along with endurance tests.",
    "Somewhere between the bottom of the climb and the summit is the answer to the mystery why we climb.",
    "Without mountains, we might find ourselves relieved that we can avoid the pain of the ascent, but we will forever miss the thrill of the summit. And in such a terribly scandalous trade-off, it is the absence of pain that becomes the thief of life.",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (_, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "img/${images[index]}",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const AppLargeText(text: "Trips"),
                      const AppText(
                        text: "Mountain",
                        size: 30,
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: 250,
                        child: AppText(
                          text: quotes[index],
                          color: AppColors.textColor2,
                          size: 14,
                        ),
                      ),
                      const SizedBox(height: 40),
                      ResponsiveButton(width: 120),
                    ],
                  ),
                  Column(
                    children: List.generate(
                      images.length,
                      (pageIndex) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 2),
                          width: 8,
                          height: pageIndex == index ? 25 : 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: pageIndex == index
                                ? AppColors.mainColor
                                : AppColors.mainColor.withOpacity(0.3),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
