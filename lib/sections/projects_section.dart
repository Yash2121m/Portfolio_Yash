// =====================================
// lib/sections/projects_section.dart
// =====================================

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/project_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(

      padding: EdgeInsets.symmetric(
        horizontal: Get.width * .05,
        vertical: Get.height * .08,
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // TITLE

          ShaderMask(

            shaderCallback: (bounds) {

              return const LinearGradient(
                colors: [
                  Colors.blue,
                  Colors.purple,
                ],
              ).createShader(bounds);
            },

            child: const Text(
              'Projects',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),

          const SizedBox(height: 15),

          Text(
            'Some of the featured Flutter applications and projects I’ve developed.',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey.shade400,
            ),
          ),

          const SizedBox(height: 50),

          // AUTOVERSE

          ProjectCard(

            title: 'AutoVerse',

            description: '''
• Developed a full-featured cross-platform car dealership application using Flutter.

• Enabled users to explore, filter, and compare vehicles with a seamless UI across Android and iOS.

• Implemented Firebase Authentication, profile management, and real-time data handling.

• Designed and developed an admin module for managing inventory, bookings, and user interactions.

• Improved overall system efficiency with responsive UI and optimized application performance.
''',

            github:
            'https://github.com/Yash2121m/Car_Dealership_Application/tree/AutoVerse',

            imagePath:
            'assets/images/autoverse_logo.png',

            glowColor: Colors.blue,
          ),

          const SizedBox(height: 40),

          // COFFEE SHOP

          ProjectCard(

            title: 'Coffee Shop Application',

            description: '''
• Built a responsive mobile application for coffee ordering and product browsing using Flutter.

• Implemented features like cart management, order tracking, and smooth navigation experience.

• Designed intuitive and modern UI using Flutter widgets and responsive layouts.

• Optimized application performance for better stability and seamless user experience.

• Improved app reliability through debugging and performance optimization techniques.
''',

            github:
            'https://github.com/Yash2121m/Coffee_Shop_Application',

            imagePath:
            'assets/images/coffee_logo.png',

            glowColor: Colors.orange,
          ),
        ],
      ),
    );
  }
}