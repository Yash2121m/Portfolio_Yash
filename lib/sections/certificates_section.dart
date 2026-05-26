import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class CertificatesSection extends StatelessWidget {
  const CertificatesSection({super.key});

  Future<void> openCertificate(
      String path,
      ) async {

    final Uri url = Uri.parse(path);

    await launchUrl(url);
  }

  @override
  Widget build(BuildContext context) {

    final certificates = [

      {
        "title":
        "Android App Development Certificate",

        "subtitle":
        "Certified in Android App Development by MyCaptain.",

        "path":
        "assets/certificates/android_certificate.pdf",

        "icon":
        Icons.android,

        "color":
        Colors.green,
      },

      {
        "title":
        "Flutter & Dart Certificate",

        "subtitle":
        "Completed Flutter & Dart Development Course.",

        "path":
        "assets/certificates/flutter_certificate.pdf",

        "icon":
        Icons.flutter_dash,

        "color":
        Colors.blue,
      },

      {
        "title":
        "Recommendation Letter",

        "subtitle":
        "Professional recommendation and appreciation letter.",

        "path":
        "assets/certificates/recommendation_letter.pdf",

        "icon":
        Icons.workspace_premium,

        "color":
        Colors.orange,
      },
    ];

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
                : Get.height * .08,
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
                  'Certificates',

                  style: TextStyle(

                    fontSize:
                    isMobile ? 40 : 50,

                    fontWeight:
                    FontWeight.bold,

                    color: Colors.white,
                  ),
                ),
              ),

              const SizedBox(height: 15),

              // SUBTITLE

              Text(

                'Professional certifications and achievements showcasing my learning journey.',

                style: TextStyle(

                  fontSize:
                  isMobile ? 15 : 18,

                  color:
                  Colors.grey.shade400,

                  height: 1.7,
                ),
              ),

              const SizedBox(height: 40),

              // GRID

              Wrap(
                spacing:
                isMobile ? 18 : 25,

                runSpacing:
                isMobile ? 18 : 25,

                children: certificates.map(

                      (certificate) {

                    return buildCertificateCard(

                      isMobile:
                      isMobile,

                      title:
                      certificate["title"]
                      as String,

                      subtitle:
                      certificate["subtitle"]
                      as String,

                      path:
                      certificate["path"]
                      as String,

                      icon:
                      certificate["icon"]
                      as IconData,

                      color:
                      certificate["color"]
                      as Color,
                    );
                  },
                ).toList(),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget buildCertificateCard({

    required bool isMobile,
    required String title,
    required String subtitle,
    required String path,
    required IconData icon,
    required Color color,
  }) {

    return StatefulBuilder(

      builder: (context, setState) {

        bool isHovering = false;

        return MouseRegion(

          onEnter: (_) {

            setState(() {
              isHovering = true;
            });
          },

          onExit: (_) {

            setState(() {
              isHovering = false;
            });
          },

          child: AnimatedContainer(

            duration:
            const Duration(milliseconds: 250),

            width:
            isMobile
                ? double.infinity
                : 370,

            padding: EdgeInsets.all(
              isMobile ? 20 : 28,
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
                color.withOpacity(0.35),
              ),

              boxShadow: [

                if (isHovering)

                  BoxShadow(
                    color:
                    color.withOpacity(0.35),

                    blurRadius: 35,
                    spreadRadius: 4,
                  ),
              ],
            ),

            transform: Matrix4.identity()
              ..scale(
                isHovering ? 1.02 : 1.0,
              ),

            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,

              children: [

                // TOP ROW

                Row(
                  children: [

                    // ICON

                    Container(

                      padding:
                      const EdgeInsets.all(15),

                      decoration: BoxDecoration(

                        borderRadius:
                        BorderRadius.circular(
                          18,
                        ),

                        gradient: LinearGradient(
                          colors: [
                            color,
                            Colors.purple,
                          ],
                        ),
                      ),

                      child: Icon(
                        icon,
                        color: Colors.white,

                        size:
                        isMobile ? 28 : 35,
                      ),
                    ),

                    const Spacer(),

                    // OPEN BUTTON

                    InkWell(

                      borderRadius:
                      BorderRadius.circular(14),

                      onTap: () {
                        openCertificate(path);
                      },

                      child: Container(

                        padding:
                        const EdgeInsets.all(12),

                        decoration: BoxDecoration(

                          borderRadius:
                          BorderRadius.circular(
                            14,
                          ),

                          color:
                          Colors.white.withOpacity(
                            0.05,
                          ),
                        ),

                        child: const Icon(
                          Icons.open_in_new,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                // TITLE

                Text(
                  title,

                  style: TextStyle(

                    fontSize:
                    isMobile ? 20 : 24,

                    fontWeight:
                    FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 15),

                // SUBTITLE

                Text(
                  subtitle,

                  style: TextStyle(

                    fontSize:
                    isMobile ? 14 : 16,

                    height: 1.7,

                    color:
                    Colors.grey.shade400,
                  ),
                ),

                const SizedBox(height: 25),

                // BUTTON

                Wrap(
                  children: [

                    InkWell(

                      borderRadius:
                      BorderRadius.circular(18),

                      onTap: () {
                        openCertificate(path);
                      },

                      child: Container(

                        padding:
                        const EdgeInsets.symmetric(
                          horizontal: 22,
                          vertical: 15,
                        ),

                        decoration: BoxDecoration(

                          borderRadius:
                          BorderRadius.circular(18),

                          gradient: LinearGradient(
                            colors: [
                              color,
                              Colors.purple,
                            ],
                          ),

                          boxShadow: [

                            BoxShadow(
                              color:
                              color.withOpacity(
                                0.35,
                              ),

                              blurRadius: 18,
                              spreadRadius: 2,
                            ),
                          ],
                        ),

                        child: Row(
                          mainAxisSize:
                          MainAxisSize.min,

                          children: [

                            const Icon(
                              Icons.picture_as_pdf,
                              color: Colors.white,
                            ),

                            const SizedBox(width: 12),

                            Text(
                              'View Certificate',

                              style: TextStyle(

                                fontSize:
                                isMobile
                                    ? 14
                                    : 16,

                                fontWeight:
                                FontWeight.bold,

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
        );
      },
    );
  }
}