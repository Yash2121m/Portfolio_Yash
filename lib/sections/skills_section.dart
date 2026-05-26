import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/skill_chip.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {

    final skills = [

      {
        "title": "Flutter",
        "icon": Icons.flutter_dash,
        "color": Colors.blue,
      },

      {
        "title": "Dart",
        "icon": Icons.code,
        "color": Colors.cyan,
      },

      {
        "title": "Firebase",
        "icon": Icons.local_fire_department,
        "color": Colors.orange,
      },

      {
        "title": "REST APIs",
        "icon": Icons.api,
        "color": Colors.green,
      },

      {
        "title": "BLoC",
        "icon": Icons.account_tree,
        "color": Colors.purple,
      },

      {
        "title": "GetX",
        "icon": Icons.flash_on,
        "color": Colors.yellow,
      },

      {
        "title": "SQLite",
        "icon": Icons.storage,
        "color": Colors.teal,
      },

      {
        "title": "GitHub",
        "icon": Icons.code_off,
        "color": Colors.white,
      },

      {
        "title": "Android Studio",
        "icon": Icons.android,
        "color": Colors.lightGreen,
      },

      {
        "title": "Postman",
        "icon": Icons.send,
        "color": Colors.deepOrange,
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
                  'Skills & Technologies',

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

                'Technologies and tools I use to build scalable and modern Flutter applications.',

                style: TextStyle(

                  fontSize:
                  isMobile ? 15 : 18,

                  color:
                  Colors.grey.shade400,

                  height: 1.7,
                ),
              ),

              const SizedBox(height: 35),

              // SKILLS GRID

              Wrap(

                alignment:
                WrapAlignment.start,

                spacing:
                isMobile ? 14 : 20,

                runSpacing:
                isMobile ? 14 : 20,

                children: skills.map(

                      (skill) => SkillChip(

                    title:
                    skill["title"] as String,

                    icon:
                    skill["icon"] as IconData,

                    color:
                    skill["color"] as Color,

                    isMobile:
                    isMobile,
                  ),
                ).toList(),
              ),
            ],
          ),
        );
      },
    );
  }
}