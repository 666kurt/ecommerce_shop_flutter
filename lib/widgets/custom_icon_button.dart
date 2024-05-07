import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final void Function()? onTap;
  final Icon icon;
  const CustomIconButton({super.key, required this.onTap, required this.icon});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      highlightColor: Colors.transparent,
      onPressed: onTap,
      icon: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(12),
        ),
        child: icon,
      ),
    );
  }
}
