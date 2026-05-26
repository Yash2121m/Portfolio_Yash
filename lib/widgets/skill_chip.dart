import 'package:flutter/material.dart';

class SkillChip extends StatefulWidget {

  final String title;
  final IconData icon;
  final Color color;
  final bool isMobile;

  const SkillChip({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
    required this.isMobile,
  });

  @override
  State<SkillChip> createState() =>
      _SkillChipState();
}

class _SkillChipState
    extends State<SkillChip> {

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

        duration:
        const Duration(milliseconds: 250),

        padding: EdgeInsets.symmetric(

          horizontal:
          widget.isMobile ? 18 : 25,

          vertical:
          widget.isMobile ? 14 : 18,
        ),

        decoration: BoxDecoration(

          borderRadius:
          BorderRadius.circular(20),

          gradient: LinearGradient(
            colors: [

              widget.color.withOpacity(
                isHovering ? 0.35 : 0.20,
              ),

              Colors.white.withOpacity(0.05),
            ],
          ),

          border: Border.all(
            color:
            widget.color.withOpacity(0.4),
          ),

          boxShadow: [

            if (isHovering)

              BoxShadow(
                color:
                widget.color.withOpacity(0.4),

                blurRadius: 25,
                spreadRadius: 2,
              ),
          ],
        ),

        transform: Matrix4.identity()
          ..scale(
            isHovering ? 1.05 : 1.0,
          ),

        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [

            Icon(
              widget.icon,

              color: widget.color,

              size:
              widget.isMobile ? 22 : 28,
            ),

            SizedBox(
              width:
              widget.isMobile ? 10 : 15,
            ),

            Text(
              widget.title,

              style: TextStyle(

                fontSize:
                widget.isMobile ? 15 : 18,

                fontWeight:
                FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}