// =====================================
// lib/widgets/project_card.dart
// =====================================

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatefulWidget {

  final String title;
  final String description;
  final String github;
  final String imagePath;
  final Color glowColor;

  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.github,
    required this.imagePath,
    required this.glowColor,
  });

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {

  bool isHovering = false;

  Future<void> openGithub(String url) async {
    await launchUrl(Uri.parse(url));
  }

  @override
  Widget build(BuildContext context) {

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

        duration: const Duration(milliseconds: 250),

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
            color: widget.glowColor.withOpacity(0.3),
          ),

          boxShadow: [

            if (isHovering)

              BoxShadow(
                color: widget.glowColor.withOpacity(0.35),
                blurRadius: 35,
                spreadRadius: 5,
              ),
          ],
        ),

        transform: Matrix4.identity()
          ..scale(isHovering ? 1.01 : 1.0),

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // PROJECT IMAGE

            Expanded(

              flex: 3,

              child: Center(
                child: Container(

                  padding: const EdgeInsets.all(5),

                  decoration: BoxDecoration(

                    shape: BoxShape.circle,

                    gradient: LinearGradient(
                      colors: [
                        widget.glowColor,
                        Colors.purple,
                      ],
                    ),
                  ),

                  child: CircleAvatar(

                    radius: 110,

                    backgroundColor: Colors.black,

                    backgroundImage: AssetImage(
                      widget.imagePath,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(width: 40),

            // CONTENT

            Expanded(

              flex: 5,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // TITLE

                  ShaderMask(

                    shaderCallback: (bounds) {

                      return LinearGradient(
                        colors: [
                          widget.glowColor,
                          Colors.purple,
                        ],
                      ).createShader(bounds);
                    },

                    child: Text(
                      widget.title,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),

                  // TECH STACK

                  Wrap(
                    spacing: 12,
                    runSpacing: 12,

                    children: [

                      buildTechChip('Flutter'),
                      buildTechChip('Firebase'),
                      buildTechChip('REST APIs'),
                      buildTechChip('Responsive UI'),
                    ],
                  ),

                  const SizedBox(height: 30),

                  // DESCRIPTION

                  Text(
                    widget.description,
                    style: TextStyle(
                      fontSize: 17,
                      height: 1.9,
                      color: Colors.grey.shade300,
                    ),
                  ),

                  const SizedBox(height: 35),

                  // BUTTONS

                  Row(
                    children: [

                      // GITHUB BUTTON

                      InkWell(

                        borderRadius: BorderRadius.circular(18),

                        onTap: () {
                          openGithub(widget.github);
                        },

                        child: Container(

                          padding: const EdgeInsets.symmetric(
                            horizontal: 26,
                            vertical: 16,
                          ),

                          decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(18),

                            gradient: LinearGradient(
                              colors: [
                                widget.glowColor,
                                Colors.purple,
                              ],
                            ),

                            boxShadow: [

                              BoxShadow(
                                color: widget.glowColor.withOpacity(0.35),
                                blurRadius: 20,
                                spreadRadius: 2,
                              ),
                            ],
                          ),

                          child: Row(
                            children: const [

                              Icon(
                                Icons.code,
                                color: Colors.white,
                              ),

                              SizedBox(width: 12),

                              Text(
                                'View Project',
                                style: TextStyle(
                                  fontSize: 16,
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
          ],
        ),
      ),
    );
  }

  Widget buildTechChip(String title) {

    return Container(

      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),

      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(30),

        color: Colors.white.withOpacity(0.05),

        border: Border.all(
          color: Colors.white.withOpacity(0.08),
        ),
      ),

      child: Text(
        title,
        style: TextStyle(
          color: Colors.grey.shade300,
        ),
      ),
    );
  }
}