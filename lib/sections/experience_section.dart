import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Get.width * .05,
        vertical: Get.height * .05,
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [


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
              'Experience',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),

          const SizedBox(height: 15),

          Text(
            'My professional journey as a Flutter Developer.',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey.shade400,
            ),
          ),

          const SizedBox(height: 40),

          // EXPERIENCE CARD

          Container(

            width: double.infinity,

            padding: const EdgeInsets.all(30),

            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(30),

              gradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(0.08),
                  Colors.white.withOpacity(0.03),
                ],
              ),

              border: Border.all(
                color: Colors.white.withOpacity(0.1),
              ),

              boxShadow: [

                BoxShadow(
                  color: Colors.blue.withOpacity(0.15),
                  blurRadius: 30,
                  spreadRadius: 5,
                ),
              ],
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // COMPANY HEADER

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    // ICON

                    Container(
                      padding: const EdgeInsets.all(18),

                      decoration: BoxDecoration(
                        shape: BoxShape.circle,

                        gradient: const LinearGradient(
                          colors: [
                            Colors.blue,
                            Colors.purple,
                          ],
                        ),
                      ),

                      child: const Icon(
                        Icons.work,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),

                    const SizedBox(width: 20),

                    // COMPANY DETAILS

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          const Text(
                            'InMinit Pvt. Ltd.',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 8),

                          Row(
                            children: [

                              Icon(
                                Icons.badge,
                                color: Colors.blue.shade300,
                                size: 20,
                              ),

                              const SizedBox(width: 8),

                              Text(
                                'Flutter Developer',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey.shade300,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 8),

                          Row(
                            children: [

                              Icon(
                                Icons.calendar_month,
                                color: Colors.purple.shade300,
                                size: 20,
                              ),

                              const SizedBox(width: 8),

                              Text(
                                'Sep 2025 – Apr 2026',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey.shade400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 35),

                // DESCRIPTION

                Text(
                  'Worked as a Flutter Developer building scalable cross-platform applications with modern architecture principles, responsive UI, Firebase integrations, and real-time data management.',
                  style: TextStyle(
                    fontSize: 17,
                    height: 1.8,
                    color: Colors.grey.shade300,
                  ),
                ),

                const SizedBox(height: 35),

                // ACHIEVEMENTS TITLE

                const Text(
                  'Key Contributions',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                // POINTS

                buildPoint(
                  'Developed scalable Flutter applications for Android & iOS platforms.',
                ),

                buildPoint(
                  'Built Customer, Seller, and Rider applications for a multi-app ecosystem.',
                ),

                buildPoint(
                  'Integrated Firebase Authentication, Firestore, and REST APIs.',
                ),

                buildPoint(
                  'Reduced application load time by nearly 35% through optimization techniques.',
                ),

                buildPoint(
                  'Implemented BLoC architecture for better scalability and maintainability.',
                ),

                buildPoint(
                  'Supported 700+ users with smooth and responsive user experience.',
                ),

                buildPoint(
                  'Collaborated with Agile teams for feature development, debugging, and deployment.',
                ),

                const SizedBox(height: 35),

                // STATS ROW

                Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: [

                    buildStatCard(
                      title: '700+',
                      subtitle: 'Users Supported',
                      icon: Icons.people,
                    ),

                    buildStatCard(
                      title: '35%',
                      subtitle: 'Load Time Reduced',
                      icon: Icons.speed,
                    ),

                    buildStatCard(
                      title: '3 Apps',
                      subtitle: 'Multi-App Ecosystem',
                      icon: Icons.apps,
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

  Widget buildPoint(String text) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 18),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          Container(
            margin: const EdgeInsets.only(top: 6),

            height: 10,
            width: 10,

            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  Colors.blue,
                  Colors.purple,
                ],
              ),
            ),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16,
                height: 1.7,
                color: Colors.grey.shade300,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildStatCard({
    required String title,
    required String subtitle,
    required IconData icon,
  }) {

    return Container(

      width: 200,

      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(20),

        color: Colors.white.withOpacity(0.05),

        border: Border.all(
          color: Colors.white.withOpacity(0.08),
        ),
      ),

      child: Column(
        children: [

          Icon(
            icon,
            size: 35,
            color: Colors.blueAccent,
          ),

          const SizedBox(height: 15),

          Text(
            title,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey.shade400,
            ),
          ),
        ],
      ),
    );
  }
}