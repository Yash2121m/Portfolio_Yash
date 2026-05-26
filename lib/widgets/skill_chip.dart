import 'package:flutter/material.dart';

class SkillChip extends StatefulWidget {

  final String title;
  final IconData icon;
  final Color color;

  const SkillChip({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
  });

  @override
  State<SkillChip> createState() => _SkillChipState();
}

class _SkillChipState extends State<SkillChip> {

  bool isHovering = false;

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

        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 18,
        ),

        decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(20),

          gradient: LinearGradient(
            colors: [

              widget.color.withOpacity(
                isHovering ? 0.35 : 0.20,
              ),

              Colors.white.withOpacity(0.05),
            ],
          ),

          border: Border.all(
            color: widget.color.withOpacity(0.4),
          ),

          boxShadow: [

            if (isHovering)

              BoxShadow(
                color: widget.color.withOpacity(0.4),
                blurRadius: 25,
                spreadRadius: 2,
              ),
          ],
        ),

        transform: Matrix4.identity()
          ..scale(isHovering ? 1.05 : 1.0),

        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [

            Icon(
              widget.icon,
              color: widget.color,
              size: 28,
            ),

            const SizedBox(width: 15),

            Text(
              widget.title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}