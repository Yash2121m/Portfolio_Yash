import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../widgets/social_button.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

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
                  'Contact Me',

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

                'Let’s connect and build something amazing together.',

                style: TextStyle(

                  fontSize:
                  isMobile ? 15 : 18,

                  color:
                  Colors.grey.shade400,

                  height: 1.7,
                ),
              ),

              const SizedBox(height: 40),

              // CONTACT CARDS

              Wrap(

                spacing:
                isMobile ? 18 : 25,

                runSpacing:
                isMobile ? 18 : 25,

                children: [

                  // LINKEDIN

                  SocialButton(

                    isMobile:
                    isMobile,

                    icon: const FaIcon(
                      FontAwesomeIcons.linkedinIn,
                      color: Colors.white,
                      size: 28,
                    ),

                    title: 'LinkedIn',

                    subtitle:
                    'Connect professionally and view my experience & achievements.',

                    url:
                    'https://www.linkedin.com/in/yash-patil-2121yp/',

                    color: Colors.blue,
                  ),

                  // GITHUB

                  SocialButton(

                    isMobile:
                    isMobile,

                    icon: const FaIcon(
                      FontAwesomeIcons.github,
                      color: Colors.white,
                      size: 28,
                    ),

                    title: 'GitHub',

                    subtitle:
                    'Explore my Flutter projects, repositories and source code.',

                    url:
                    'https://github.com/Yash2121m',

                    color: Colors.white,
                  ),

                  // EMAIL

                  SocialButton(

                    isMobile:
                    isMobile,

                    icon: const Icon(
                      Icons.email,
                      color: Colors.white,
                      size: 28,
                    ),

                    title: 'Email',

                    subtitle:
                    'Reach out for collaborations, opportunities and projects.',

                    url:
                    'mailto:yashspatil2005@gmail.com',

                    color: Colors.orange,
                  ),
                ],
              ),

              SizedBox(
                height:
                isMobile ? 40 : 60,
              ),

              // FOOTER

              Center(
                child: Column(
                  children: [

                    Text(

                      '© 2026 Yash Patil • Flutter Developer',

                      textAlign:
                      TextAlign.center,

                      style: TextStyle(

                        fontSize:
                        isMobile ? 13 : 16,

                        color:
                        Colors.grey.shade500,
                      ),
                    ),

                    const SizedBox(height: 12),

                    Text(

                      'Built with Flutter Web 💙',

                      textAlign:
                      TextAlign.center,

                      style: TextStyle(

                        fontSize:
                        isMobile ? 12 : 15,

                        color:
                        Colors.grey.shade600,
                      ),
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
}