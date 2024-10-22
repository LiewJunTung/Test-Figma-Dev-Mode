import 'package:flutter/material.dart';

class VfButton extends StatelessWidget {
  final Widget child;

  const VfButton({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: child,
      ),
    );
  }
}
