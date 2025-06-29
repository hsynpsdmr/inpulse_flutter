import 'dart:math';

import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF22252A),

      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 32,
                    height: 32,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: const Color(0xFFE2447F)),
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset('assets/icons/back-arrow.png', width: 16, height: 16),
                    ),
                  ),

                  Image.asset('assets/icons/inpulse-proplan.png'),
                  Text(
                    'Restore',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),

            // Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 50),
            //   child: Image.asset('assets/images/image1.png', scale: 2),
            // ),
            // Column(
            //   children: [
            //     Text(
            //       'See Who Viewed Your Profile',
            //       textAlign: TextAlign.center,
            //       style: TextStyle(
            //         color: Colors.white,
            //         fontSize: 20,
            //         fontFamily: 'Poppins',
            //         fontWeight: FontWeight.w700,
            //       ),
            //     ),
            //     SizedBox(height: 10),
            //     Text(
            //       'Find out who viewed your profile\nand when — right away!',
            //       textAlign: TextAlign.center,
            //       style: TextStyle(
            //         color: Colors.white,
            //         fontSize: 17,
            //         fontFamily: 'Poppins',
            //         fontWeight: FontWeight.w300,
            //         height: 1.18,
            //       ),
            //     ),
            //   ],
            // ),
            AnimatedSlideShow(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    // Handle weekly subscription tap
                  },
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignOutside,
                          color: const Color(0x3FE3457B),
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/images/weekly.png', scale: 2),
                        Text(
                          'Weekly',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 8,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          'TRY 99.99',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Handle monthly subscription tap
                  },
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignOutside,
                          color: const Color(0x3FE3457B),
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/images/monthly.png', scale: 2),
                        Text(
                          'Monthly',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 8,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          'TRY 199.99',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Handle 3-month subscription tap
                  },
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignOutside,
                          color: const Color(0xFFE3457B),
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/images/3-monthly.png', scale: 2),
                        Text(
                          '3 Monthly',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 8,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          'TRY 499.99',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                // Handle subscribe now tap
              },
              child: Container(
                width: double.infinity,
                height: 60,
                alignment: Alignment.center,
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.00, 0.50),
                    end: Alignment(1.00, 0.50),
                    colors: [const Color(0xFFE3447A), const Color(0xFFBE4BAB)],
                  ),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                ),
                child: Text(
                  'Subscribe Now',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'By proceeding, you agree to the',
                    style: TextStyle(
                      color: const Color(0xFFCBCBCB),
                      fontSize: 10,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  TextSpan(
                    text: ' ',
                    style: TextStyle(
                      color: const Color(0xFF939393),
                      fontSize: 10,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  TextSpan(
                    text: 'Privacy Policy\n',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextSpan(
                    text: 'and',
                    style: TextStyle(
                      color: const Color(0xFFCBCBCB),
                      fontSize: 10,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  TextSpan(
                    text: ' ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  TextSpan(
                    text: 'Terms of Service.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            Opacity(
              opacity: 0.50,
              child: Text(
                'Your subscription will be automatically renewed at the end of each\nperiod. You can cancel your subscription at any time.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFFCBCBCB),
                  fontSize: 8,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AnimatedSlideShow extends StatefulWidget {
  const AnimatedSlideShow({super.key});

  @override
  State<AnimatedSlideShow> createState() => _AnimatedSlideShowState();
}

class _AnimatedSlideShowState extends State<AnimatedSlideShow> with TickerProviderStateMixin {
  final List<SlideItem> slides = [
    SlideItem(
      imagePath: 'assets/images/image1.png',
      title: 'See Who Viewed Your Profile',
      subtitle: 'Find out who viewed your profile\nand when — right away!',
    ),
    SlideItem(
      imagePath: 'assets/images/image2.png',
      title: 'See Who Blocked You',
      subtitle: 'Find out instantly who\nblocked you!',
    ),
    SlideItem(
      imagePath: 'assets/images/image3.png',
      title: 'Watch Stories Anonymously',
      subtitle: 'Watch stories without following! And\nleave no trace behind!',
    ),
  ];

  late AnimationController _controller;

  late Animation<double> rotation;
  late Animation<double> scale;
  late Animation<double> opacity;

  late Animation<Offset> slideText;
  late Animation<double> textOpacity;

  int currentIndex = 0;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 2));

    _initAnimations();

    _startSlideAnimation();
  }

  void _initAnimations() {
    rotation = Tween<double>(
      begin: 0.0,
      end: 2 * pi,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    scale = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    opacity = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: const Interval(0.2, 0.8, curve: Curves.easeInOut)));

    slideText = Tween<Offset>(
      begin: const Offset(0, 0.2),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: const Interval(0.3, 0.9, curve: Curves.easeOut)));

    textOpacity = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: const Interval(0.3, 0.9)));
  }

  void _startSlideAnimation() async {
    while (mounted) {
      await _controller.forward();
      await Future.delayed(const Duration(seconds: 2));
      await _controller.reverse();

      if (!mounted) return;

      setState(() {
        currentIndex = (currentIndex + 1) % slides.length;
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final slide = slides[currentIndex];

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Opacity(
                opacity: opacity.value,
                child: Transform.scale(
                  scale: scale.value,
                  child: Transform.rotate(
                    angle: rotation.value,
                    child: Image.asset(
                      slide.imagePath,
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.width * 0.5,
                    ),
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 30),
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Opacity(
                opacity: textOpacity.value,
                child: SlideTransition(
                  position: slideText,
                  child: Column(
                    children: [
                      Text(
                        slide.title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        slide.subtitle,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w300,
                          height: 1.18,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class SlideItem {
  final String imagePath;
  final String title;
  final String subtitle;

  SlideItem({required this.imagePath, required this.title, required this.subtitle});
}
