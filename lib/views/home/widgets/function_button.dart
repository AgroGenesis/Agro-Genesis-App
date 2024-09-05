import 'package:agrogenesis/app/app_theme.dart';
import 'package:flutter/material.dart';

class FunctionButton extends StatelessWidget {
  final String name;
  final String icon;
  final Function()? onTap;
  const FunctionButton(
      {super.key, required this.name, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      // width: 180,
      // height: 40,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              greenColor,
              greenColor.withOpacity(0.4),
            ],
          ),
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade300,
                spreadRadius: 2,
                blurRadius: 8,
                offset: const Offset(2, 3))
          ]),
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              icon,
              width: 50,
              height: 50,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                name,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
