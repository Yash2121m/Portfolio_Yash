import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

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
              'About Me',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),

          const SizedBox(height: 15),

          // SUBTITLE

          Text(
            'Passionate Flutter Developer crafting scalable and beautiful mobile experiences.',
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey.shade400,
              height: 1.6,
            ),
          ),

          const SizedBox(height: 40),

          // MAIN CARD

          Container(

            width: double.infinity,

            padding: const EdgeInsets.all(35),

            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(30),

              gradient: LinearGradient(
                colors: [

                  Colors.white.withOpacity(0.08),

                  Colors.white.withOpacity(0.03),
                ],
              ),

              border: Border.all(
                color: Colors.white.withOpacity(0.08),
              ),

              boxShadow: [

                BoxShadow(
                  color: Colors.blue.withOpacity(0.12),
                  blurRadius: 30,
                  spreadRadius: 5,
                ),
              ],
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // INTRO

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    // ICON

                    Container(

                      padding: const EdgeInsets.all(18),

                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,

                        gradient: LinearGradient(
                          colors: [
                            Colors.blue,
                            Colors.purple,
                          ],
                        ),
                      ),

                      child: const Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),

                    const SizedBox(width: 20),

                    // TEXT

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          const Text(
                            'Flutter Developer',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 10),

                          Text(
                            '1+ Year Experience • Cross-Platform App Development • Firebase • REST APIs',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.grey.shade400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 35),

                // DESCRIPTION

                Text(
                  'Flutter Developer with over 1 year of experience in designing and developing scalable mobile applications using Flutter, Firebase, REST APIs, and Clean Architecture principles. Passionate about building responsive UI, optimizing app performance, and delivering smooth user experiences across Android and iOS platforms.',
                  style: TextStyle(
                    fontSize: 18,
                    height: 1.9,
                    color: Colors.grey.shade300,
                  ),
                ),

                const SizedBox(height: 35),

                // HIGHLIGHTS TITLE

                const Text(
                  'What I Do',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 25),

                // HIGHLIGHTS GRID

                Wrap(
                  spacing: 20,
                  runSpacing: 20,

                  children: [

                    buildHighlightCard(
                      icon: Icons.phone_android,
                      title: 'Cross-Platform Apps',
                      subtitle:
                      'Building responsive Android & iOS applications using Flutter.',
                    ),

                    buildHighlightCard(
                      icon: Icons.cloud,
                      title: 'Firebase Integration',
                      subtitle:
                      'Authentication, Firestore, Realtime DB & cloud-based solutions.',
                    ),

                    buildHighlightCard(
                      icon: Icons.api,
                      title: 'REST APIs',
                      subtitle:
                      'Integrating scalable backend APIs and real-time services.',
                    ),

                    buildHighlightCard(
                      icon: Icons.design_services,
                      title: 'Modern UI/UX',
                      subtitle:
                      'Designing beautiful, smooth and intuitive user experiences.',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildHighlightCard({

    required IconData icon,
    required String title,
    required String subtitle,
  }) {

    return Container(

      width: 260,

      padding: const EdgeInsets.all(22),

      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(22),

        color: Colors.white.withOpacity(0.04),

        border: Border.all(
          color: Colors.white.withOpacity(0.08),
        ),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(

            padding: const EdgeInsets.all(12),

            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(15),

              gradient: const LinearGradient(
                colors: [
                  Colors.blue,
                  Colors.purple,
                ],
              ),
            ),

            child: Icon(
              icon,
              color: Colors.white,
              size: 28,
            ),
          ),

          const SizedBox(height: 18),

          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 12),

          Text(
            subtitle,
            style: TextStyle(
              fontSize: 15,
              height: 1.7,
              color: Colors.grey.shade400,
            ),
          ),
        ],
      ),
    );
  }
}