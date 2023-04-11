import 'package:flutter/material.dart';

class GlowCard extends StatefulWidget {
  const GlowCard({
    Key? key,
    this.isGlowing = true,
    required this.glowColor,
    required this.cardColor,
    this.animationMilliseconds = 750,
  }) : super(key: key);
  final bool isGlowing;
  final Color glowColor;
  final Color cardColor;
  final int animationMilliseconds;

  @override
  State<GlowCard> createState() => _GlowCardState();
}

class _GlowCardState extends State<GlowCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: widget.animationMilliseconds),
      reverseDuration: Duration(milliseconds: widget.animationMilliseconds),
    );

    _animation = Tween<double>(begin: 0.0, end: 8.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
        reverseCurve: Curves.easeInOut,
      ),
    )..addListener(() {
        setState(() {});
      });

    if (widget.isGlowing) {
      _animationController.repeat(reverse: true);
    }
  }

  @override
  void didUpdateWidget(GlowCard oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.isGlowing != oldWidget.isGlowing) {
      if (widget.isGlowing) {
        _animationController.repeat(reverse: true);
      } else {
        _animationController.stop();
        _animation = Tween<double>(begin: 0.0, end: 8.0).animate(
          CurvedAnimation(
            parent: _animationController,
            curve: Curves.easeInOut,
            reverseCurve: Curves.easeInOut,
          ),
        )..addListener(() {
            setState(() {});
          });
      }
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (BuildContext context, Widget? child) {
        return AnimatedContainer(
          duration: Duration(milliseconds: widget.animationMilliseconds),
          decoration: widget.isGlowing
              ? BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: [
                    BoxShadow(
                      color: widget.glowColor,
                      blurRadius: _animation.value,
                      spreadRadius: _animation.value,
                    ),
                  ],
                )
              : null,
          child: Card(
            color: widget.cardColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
        );
      },
    );
  }
}
