import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(
      builder: (context, constraints) {

        final bool isMobile =
            constraints.maxWidth < 800;

        return Padding(

          padding: EdgeInsets.symmetric(

            horizontal:
            isMobile
                ? 25
                : Get.width * .05,

            vertical:
            isMobile
                ? 50
                : Get.height * .05,
          ),

          child: Column(
            crossAxisAlignment:
            CrossAxisAlignment.start,

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

                child: Text(
                  'Experience',

                  style: TextStyle(

                    fontSize:
                    isMobile ? 40 : 48,

                    fontWeight:
                    FontWeight.bold,

                    color: Colors.white,
                  ),
                ),
              ),

              const SizedBox(height: 15),

              // SUBTITLE

              Text(
                'My professional journey as a Flutter Developer.',

                style: TextStyle(

                  fontSize:
                  isMobile ? 15 : 18,

                  color:
                  Colors.grey.shade400,
                ),
              ),

              const SizedBox(height: 35),

              // EXPERIENCE CARD

              Container(

                width: double.infinity,

                padding: EdgeInsets.all(
                  isMobile ? 20 : 30,
                ),

                decoration: BoxDecoration(

                  borderRadius:
                  BorderRadius.circular(30),

                  gradient: LinearGradient(
                    colors: [

                      Colors.white.withOpacity(0.08),

                      Colors.white.withOpacity(0.03),
                    ],
                  ),

                  border: Border.all(
                    color:
                    Colors.white.withOpacity(0.1),
                  ),

                  boxShadow: [

                    BoxShadow(
                      color:
                      Colors.blue.withOpacity(0.15),

                      blurRadius: 30,
                      spreadRadius: 5,
                    ),
                  ],
                ),

                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,

                  children: [

                    // HEADER

                    isMobile
                        ? Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,

                      children: [

                        buildWorkIcon(),

                        const SizedBox(height: 20),

                        buildCompanyDetails(
                          isMobile,
                        ),
                      ],
                    )

                        : Row(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,

                      children: [

                        buildWorkIcon(),

                        const SizedBox(width: 20),

                        Expanded(
                          child:
                          buildCompanyDetails(
                            isMobile,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 30),

                    // DESCRIPTION

                    Text(

                      'Worked as a Flutter Developer building scalable cross-platform applications with modern architecture principles, responsive UI, Firebase integrations, and real-time data management.',

                      style: TextStyle(

                        fontSize:
                        isMobile ? 15 : 17,

                        height: 1.8,

                        color:
                        Colors.grey.shade300,
                      ),
                    ),

                    const SizedBox(height: 35),

                    // CONTRIBUTIONS TITLE

                    Text(
                      'Key Contributions',

                      style: TextStyle(

                        fontSize:
                        isMobile ? 20 : 22,

                        fontWeight:
                        FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 20),

                    // POINTS

                    buildPoint(
                      isMobile,
                      'Developed scalable Flutter applications for Android & iOS platforms.',
                    ),

                    buildPoint(
                      isMobile,
                      'Built Customer, Seller, and Rider applications for a multi-app ecosystem.',
                    ),

                    buildPoint(
                      isMobile,
                      'Integrated Firebase Authentication, Firestore, and REST APIs.',
                    ),

                    buildPoint(
                      isMobile,
                      'Reduced application load time by nearly 35% through optimization techniques.',
                    ),

                    buildPoint(
                      isMobile,
                      'Implemented BLoC architecture for better scalability and maintainability.',
                    ),

                    buildPoint(
                      isMobile,
                      'Supported 700+ users with smooth and responsive user experience.',
                    ),

                    buildPoint(
                      isMobile,
                      'Collaborated with Agile teams for feature development, debugging, and deployment.',
                    ),

                    const SizedBox(height: 35),

                    // STATS

                    Wrap(
                      spacing: 20,
                      runSpacing: 20,

                      children: [

                        buildStatCard(
                          isMobile: isMobile,
                          title: '700+',
                          subtitle: 'Users Supported',
                          icon: Icons.people,
                        ),

                        buildStatCard(
                          isMobile: isMobile,
                          title: '35%',
                          subtitle: 'Load Time Reduced',
                          icon: Icons.speed,
                        ),

                        buildStatCard(
                          isMobile: isMobile,
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
      },
    );
  }

  Widget buildWorkIcon() {

    return Container(

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
        Icons.work,
        color: Colors.white,
        size: 30,
      ),
    );
  }

  Widget buildCompanyDetails(bool isMobile) {

    return Column(
      crossAxisAlignment:
      CrossAxisAlignment.start,

      children: [

        Text(
          'InMinit Pvt. Ltd.',

          style: TextStyle(

            fontSize:
            isMobile ? 24 : 30,

            fontWeight:
            FontWeight.bold,
          ),
        ),

        const SizedBox(height: 10),

        Row(
          children: [

            Icon(
              Icons.badge,
              color: Colors.blue.shade300,
              size: 20,
            ),

            const SizedBox(width: 8),

            Expanded(
              child: Text(

                'Flutter Developer',

                style: TextStyle(

                  fontSize:
                  isMobile ? 15 : 18,

                  color:
                  Colors.grey.shade300,
                ),
              ),
            ),
          ],
        ),

        const SizedBox(height: 10),

        Row(
          children: [

            Icon(
              Icons.calendar_month,
              color: Colors.purple.shade300,
              size: 20,
            ),

            const SizedBox(width: 8),

            Expanded(
              child: Text(

                'Sep 2025 – Apr 2026',

                style: TextStyle(

                  fontSize:
                  isMobile ? 14 : 16,

                  color:
                  Colors.grey.shade400,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildPoint(
      bool isMobile,
      String text,
      ) {

    return Padding(

      padding:
      const EdgeInsets.only(bottom: 18),

      child: Row(
        crossAxisAlignment:
        CrossAxisAlignment.start,

        children: [

          Container(

            margin:
            const EdgeInsets.only(top: 6),

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

                fontSize:
                isMobile ? 14 : 16,

                height: 1.7,

                color:
                Colors.grey.shade300,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildStatCard({

    required bool isMobile,
    required String title,
    required String subtitle,
    required IconData icon,
  }) {

    return Container(

      width:
      isMobile
          ? double.infinity
          : 200,

      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(

        borderRadius:
        BorderRadius.circular(20),

        color:
        Colors.white.withOpacity(0.05),

        border: Border.all(
          color:
          Colors.white.withOpacity(0.08),
        ),
      ),

      child: Column(
        children: [

          Icon(
            icon,

            size:
            isMobile ? 30 : 35,

            color: Colors.blueAccent,
          ),

          const SizedBox(height: 15),

          Text(
            title,

            style: TextStyle(

              fontSize:
              isMobile ? 24 : 28,

              fontWeight:
              FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            subtitle,

            textAlign: TextAlign.center,

            style: TextStyle(
              fontSize:
              isMobile ? 13 : 14,

              color:
              Colors.grey.shade400,
            ),
          ),
        ],
      ),
    );
  }
}