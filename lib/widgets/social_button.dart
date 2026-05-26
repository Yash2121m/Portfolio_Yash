import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialButton extends StatefulWidget {

  final Widget icon;
  final String title;
  final String subtitle;
  final String url;
  final Color color;

  const SocialButton({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.url,
    required this.color,
  });

  @override
  State<SocialButton> createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {

  bool isHovering = false;

  Future<void> openUrl() async {
    await launchUrl(Uri.parse(widget.url));
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

        width: 320,

        padding: const EdgeInsets.all(25),

        decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(25),

          gradient: LinearGradient(
            colors: [

              Colors.white.withOpacity(0.08),

              Colors.white.withOpacity(0.03),
            ],
          ),

          border: Border.all(
            color: widget.color.withOpacity(0.3),
          ),

          boxShadow: [

            if (isHovering)

              BoxShadow(
                color: widget.color.withOpacity(0.35),
                blurRadius: 30,
                spreadRadius: 4,
              ),
          ],
        ),

        transform: Matrix4.identity()
          ..scale(isHovering ? 1.02 : 1.0),

        child: InkWell(

          borderRadius: BorderRadius.circular(25),

          onTap: openUrl,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // TOP ROW

              Row(
                children: [

                  // ICON CONTAINER

                  Container(

                    padding: const EdgeInsets.all(16),

                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(18),

                      gradient: LinearGradient(
                        colors: [
                          widget.color,
                          Colors.purple,
                        ],
                      ),
                    ),

                    child: widget.icon,
                  ),

                  const Spacer(),

                  const Icon(
                    Icons.open_in_new,
                    color: Colors.white,
                  ),
                ],
              ),

              const SizedBox(height: 25),

              // TITLE

              Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              // SUBTITLE

              Text(
                widget.subtitle,
                style: TextStyle(
                  fontSize: 16,
                  height: 1.6,
                  color: Colors.grey.shade400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}