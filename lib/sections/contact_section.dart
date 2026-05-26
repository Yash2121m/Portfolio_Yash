import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../widgets/social_button.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});


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
              'Contact Me',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),

          const SizedBox(height: 15),

          Text(
            'Let’s connect and build something amazing together.',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey.shade400,
            ),
          ),

          const SizedBox(height: 50),

          // CONTACT CARDS

          Wrap(
            spacing: 25,
            runSpacing: 25,

            children: [

              // LINKEDIN

              SocialButton(

                icon: const FaIcon(
                  FontAwesomeIcons.linkedinIn,
                  color: Colors.white,
                  size: 30,
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

                icon: const FaIcon(
                  FontAwesomeIcons.github,
                  color: Colors.white,
                  size: 30,
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

                icon: const Icon(
                  Icons.email,
                  color: Colors.white,
                  size: 30,
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

          const SizedBox(height: 60),

          // FOOTER

          Center(
            child: Column(
              children: [

                Text(
                  '© 2026 Yash Patil • Flutter Developer',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.shade500,
                  ),
                ),

                const SizedBox(height: 12),

                Text(
                  'Built with Flutter Web 💙',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey.shade600,
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