import 'package:flutter/material.dart';
import 'package:inpulse_flutter/instagram_login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFF22252A),
      body: Stack(
        children: [
          // Background image
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(top: screenSize.height * 0.15),
              width: screenSize.width * 1.6,
              height: screenSize.height * 0.55,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/astronaut.png'), fit: BoxFit.cover),
              ),
            ),
          ),
          // Content
          SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  children: [
                    const SizedBox(height: 60),
                    const Text(
                      'Welcome',
                      style: TextStyle(
                        color: Color(0xFFE3447A),
                        fontSize: 50,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    const Text(
                      'Get insights into your Instagram account and watch your growth take off.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(height: 40),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const InstagramLoginScreen()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 60,
                        decoration: ShapeDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [Color(0xFFE3447A), Color(0xFFBE4BAB)],
                          ),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 32,
                              height: 32,
                              margin: const EdgeInsets.only(right: 10),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/icons/instagram.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Text(
                              'Sign in with Instagram',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'We never save your password or personal information.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(height: 75),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
