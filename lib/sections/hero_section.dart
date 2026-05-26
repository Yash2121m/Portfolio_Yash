import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  Future<void> downloadResume() async {
    final Uri url = Uri.parse(
      'assets/assets/resume/yash_resume.pdf',
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

    return LayoutBuilder(
      builder: (context, constraints) {

        final bool isMobile = constraints.maxWidth < 800;

        return Container(

          width: double.infinity,

          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 25 : Get.width * .06,
            vertical: isMobile ? 60 : 0,
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

              // GLOW EFFECTS

              Positioned(
                top: 80,
                left: -100,
                child: Container(
                  height: 220,
                  width: 220,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue.withOpacity(0.15),
                  ),
                ),
              ),

              Positioned(
                bottom: 50,
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
                child: isMobile
                    ? Column(
                  children: [

                    // IMAGE

                    buildProfileImage(isMobile),

                    const SizedBox(height: 40),

                    buildContent(isMobile),
                  ],
                )
                    : Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [

                    Expanded(
                      flex: 6,
                      child: buildContent(isMobile),
                    ),

                    const SizedBox(width: 40),

                    Expanded(
                      flex: 4,
                      child: buildProfileImage(isMobile),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget buildContent(bool isMobile) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: isMobile
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,

      children: [

        // HELLO BADGE

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
            style: TextStyle(fontSize: 16),
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

            textAlign:
            isMobile ? TextAlign.center : TextAlign.start,

            style: GoogleFonts.poppins(

              fontSize: isMobile ? 48 : 72,

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

          textAlign:
          isMobile ? TextAlign.center : TextAlign.start,

          style: GoogleFonts.poppins(

            fontSize: isMobile ? 24 : 32,

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

                'Flutter • Firebase • REST APIs',

                textStyle: TextStyle(

                  fontSize: isMobile ? 16 : 20,

                  color: Colors.grey.shade400,

                  fontWeight: FontWeight.w500,
                ),

                speed: const Duration(milliseconds: 50),
              ),

              TypewriterAnimatedText(

                'BLoC • GetX • Responsive UI',

                textStyle: TextStyle(

                  fontSize: isMobile ? 16 : 20,

                  color: Colors.grey.shade400,

                  fontWeight: FontWeight.w500,
                ),

                speed: const Duration(milliseconds: 50),
              ),
            ],
          ),
        ),

        const SizedBox(height: 30),

        // DESCRIPTION

        SizedBox(

          width: isMobile ? double.infinity : 700,

          child: Text(

            'Passionate Flutter Developer with 1+ year of experience building scalable cross-platform applications using Flutter, Firebase, REST APIs, BLoC, and Clean Architecture.',

            textAlign:
            isMobile ? TextAlign.center : TextAlign.start,

            style: TextStyle(

              fontSize: isMobile ? 16 : 18,

              color: Colors.grey.shade400,

              height: 1.8,
            ),
          ),
        ),

        const SizedBox(height: 40),

        // BUTTONS

        Wrap(
          alignment: WrapAlignment.center,
          spacing: 20,
          runSpacing: 20,

          children: [

            // RESUME

            InkWell(

              borderRadius: BorderRadius.circular(18),

              onTap: () {
                downloadResume();
              },

              child: Container(

                padding: EdgeInsets.symmetric(
                  horizontal: isMobile ? 20 : 28,
                  vertical: 16,
                ),

                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(18),

                  gradient: const LinearGradient(
                    colors: [
                      Colors.blue,
                      Colors.purple,
                    ],
                  ),
                ),

                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [

                    Icon(
                      Icons.download,
                      color: Colors.white,
                    ),

                    SizedBox(width: 10),

                    Text(
                      'Download Resume',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // PROJECTS

            InkWell(

              borderRadius: BorderRadius.circular(18),

              onTap: () {
                viewProjects();
              },

              child: Container(

                padding: EdgeInsets.symmetric(
                  horizontal: isMobile ? 20 : 28,
                  vertical: 16,
                ),

                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(18),

                  border: Border.all(
                    color: Colors.white.withOpacity(0.12),
                  ),

                  color: Colors.white.withOpacity(0.04),
                ),

                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [

                    Icon(
                      Icons.code,
                      color: Colors.white,
                    ),

                    SizedBox(width: 10),

                    Text(
                      'View Projects',
                      style: TextStyle(
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
    );
  }

  Widget buildProfileImage(bool isMobile) {

    return Center(
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

        child: CircleAvatar(

          radius: isMobile ? 110 : 180,

          backgroundColor: Colors.black,

          backgroundImage: const AssetImage(
            'assets/images/profile.png',
          ),
        ),
      ),
    );
  }
}