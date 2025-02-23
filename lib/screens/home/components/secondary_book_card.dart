import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SecondaryBookCard extends StatelessWidget {
  const SecondaryBookCard({
    super.key,
    required this.title,
    required this.subtitle,
    this.iconsSrc = "assets/icons/book_stack.svg",
    this.colorl = const Color(0xFF7553F6),
  });

  final String title, subtitle, iconsSrc;
  final Color colorl;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      decoration: BoxDecoration(
          color: colorl,
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.white60,
                    fontSize: 16,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 40,
            child: VerticalDivider(
              // thickness: 5,
              color: Colors.white70,
            ),
          ),
          const SizedBox(width: 8),
          SvgPicture.asset(iconsSrc)
        ],
      ),
    );
  }
}
