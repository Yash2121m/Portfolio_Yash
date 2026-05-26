import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  Future<void> downloadResume() async {

    final Uri url = Uri.parse(
      'assets/resume/yash_resume.pdf',
    );

    await launchUrl(url);
  }

  Future<void> viewProjects() async {

    final Uri url = Uri.parse(
      'https://github.com/Yash2121m',
    );

    await launchUrl(url);
  }

  @override
  Widget build(BuildContext context) {

    return Container(

      height: MediaQuery.of(context).size.height,

      width: double.infinity,

      padding: EdgeInsets.symmetric(
        horizontal: Get.width * .06,
      ),

      decoration: const BoxDecoration(

        gradient: LinearGradient(

          begin: Alignment.topLeft,
          end: Alignment.bottomRight,

          colors: [

            Color(0xFF050816),
            Color(0xFF0B1026),
            Color(0xFF050816),
          ],
        ),
      ),

      child: Stack(
        children: [

          // BACKGROUND GLOW

          Positioned(
            top: 100,
            left: -100,

            child: Container(

              height: 250,
              width: 250,

              decoration: BoxDecoration(

                shape: BoxShape.circle,

                color: Colors.blue.withOpacity(0.15),
              ),
            ),
          ),

          Positioned(
            bottom: 100,
            right: -80,

            child: Container(

              height: 220,
              width: 220,

              decoration: BoxDecoration(

                shape: BoxShape.circle,

                color: Colors.purple.withOpacity(0.15),
              ),
            ),
          ),

          // MAIN CONTENT

          Center(

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                // LEFT SIDE

                Expanded(

                  flex: 6,

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      // HELLO TEXT

                      Container(

                        padding: const EdgeInsets.symmetric(
                          horizontal: 18,
                          vertical: 10,
                        ),

                        decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(30),

                          color: Colors.white.withOpacity(0.06),

                          border: Border.all(
                            color: Colors.white.withOpacity(0.08),
                          ),
                        ),

                        child: const Text(
                          '👋 Hello, I’m',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),

                      const SizedBox(height: 25),

                      // NAME

                      ShaderMask(

                        shaderCallback: (bounds) {

                          return const LinearGradient(
                            colors: [
                              Colors.blue,
                              Colors.purple,
                            ],
                          ).createShader(bounds);
                        },

                        child: Text(
                          'Yash Patil',
                          style: GoogleFonts.poppins(

                            fontSize: 72,

                            fontWeight: FontWeight.bold,

                            color: Colors.white,

                            height: 1.1,
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      // ROLE

                      Text(
                        'Flutter Developer',
                        style: GoogleFonts.poppins(

                          fontSize: 32,

                          fontWeight: FontWeight.w600,

                          color: Colors.grey.shade300,
                        ),
                      ),

                      const SizedBox(height: 25),

                      // ANIMATED TEXT

                      SizedBox(

                        height: 60,

                        child: AnimatedTextKit(

                          repeatForever: true,

                          animatedTexts: [

                            TypewriterAnimatedText(

                              'Flutter • Firebase • REST APIs • Clean Architecture',

                              textStyle: TextStyle(

                                fontSize: 20,

                                color: Colors.grey.shade400,

                                fontWeight: FontWeight.w500,
                              ),

                              speed: const Duration(
                                milliseconds: 50,
                              ),
                            ),

                            TypewriterAnimatedText(

                              'BLoC • GetX • Responsive UI • Android & iOS',

                              textStyle: TextStyle(

                                fontSize: 20,

                                color: Colors.grey.shade400,

                                fontWeight: FontWeight.w500,
                              ),

                              speed: const Duration(
                                milliseconds: 50,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 35),

                      // DESCRIPTION

                      SizedBox(

                        width: 700,

                        child: Text(

                          'Passionate Flutter Developer with 1+ year of experience building scalable cross-platform applications using Flutter, Firebase, REST APIs, BLoC, and Clean Architecture. Focused on delivering smooth user experiences and modern UI designs.',

                          style: TextStyle(

                            fontSize: 18,

                            color: Colors.grey.shade400,

                            height: 1.8,
                          ),
                        ),
                      ),

                      const SizedBox(height: 45),

                      // BUTTONS

                      Row(
                        children: [

                          // RESUME BUTTON

                          InkWell(

                            borderRadius: BorderRadius.circular(18),

                            onTap: () {
                              downloadResume();
                            },

                            child: Container(

                              padding: const EdgeInsets.symmetric(
                                horizontal: 28,
                                vertical: 18,
                              ),

                              decoration: BoxDecoration(

                                borderRadius: BorderRadius.circular(18),

                                gradient: const LinearGradient(
                                  colors: [
                                    Colors.blue,
                                    Colors.purple,
                                  ],
                                ),

                                boxShadow: [

                                  BoxShadow(
                                    color: Colors.blue.withOpacity(0.35),
                                    blurRadius: 20,
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),

                              child: Row(
                                children: const [

                                  Icon(
                                    Icons.download,
                                    color: Colors.white,
                                  ),

                                  SizedBox(width: 12),

                                  Text(
                                    'Download Resume',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          const SizedBox(width: 25),

                          // PROJECT BUTTON

                          InkWell(

                            borderRadius: BorderRadius.circular(18),

                            onTap: () {
                              viewProjects();
                            },

                            child: Container(

                              padding: const EdgeInsets.symmetric(
                                horizontal: 28,
                                vertical: 18,
                              ),

                              decoration: BoxDecoration(

                                borderRadius: BorderRadius.circular(18),

                                border: Border.all(
                                  color: Colors.white.withOpacity(0.12),
                                ),

                                color: Colors.white.withOpacity(0.04),
                              ),

                              child: Row(
                                children: const [

                                  Icon(
                                    Icons.code,
                                    color: Colors.white,
                                  ),

                                  SizedBox(width: 12),

                                  Text(
                                    'View Projects',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(width: 40),

                // RIGHT SIDE IMAGE

                Expanded(

                  flex: 4,

                  child: Center(

                    child: Container(

                      padding: const EdgeInsets.all(6),

                      decoration: BoxDecoration(

                        shape: BoxShape.circle,

                        gradient: const LinearGradient(
                          colors: [
                            Colors.blue,
                            Colors.purple,
                          ],
                        ),

                        boxShadow: [

                          BoxShadow(
                            color: Colors.blue.withOpacity(0.35),
                            blurRadius: 35,
                            spreadRadius: 5,
                          ),
                        ],
                      ),

                      child: const CircleAvatar(

                        radius: 180,

                        backgroundColor: Colors.black,

                        backgroundImage: AssetImage(
                          'images/profile.png',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}