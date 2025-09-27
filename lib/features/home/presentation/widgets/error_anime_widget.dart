import 'package:flutter/material.dart';

class AnimatedError extends StatefulWidget {
  final String message;
  const AnimatedError({super.key, required this.message});

  @override
  State<AnimatedError> createState() => _AnimatedErrorState();
}

class _AnimatedErrorState extends State<AnimatedError>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _offset;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    )..repeat(reverse: true);
    _offset = Tween<double>(begin: -4, end: 4)
        .chain(CurveTween(curve: Curves.elasticIn))
        .animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _offset,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(_offset.value, 0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.error, size: 48, color: Colors.red.shade400),
              const SizedBox(height: 8),
              Text(widget.message,
                  style: const TextStyle(color: Colors.red, fontSize: 16)),
            ],
          ),
        );
      },
    );
  }
}
