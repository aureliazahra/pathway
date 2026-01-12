import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pathway/core/theme.dart';

class SocialRow extends StatelessWidget {
  const SocialRow({super.key});

  Widget _circle(IconData icon) {
    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.10),
            blurRadius: 10,
            offset: const Offset(0, 6),
          )
        ]
      ),
      child: Center(child: FaIcon(icon, color: AppColors.textDark)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 16,
      children: [
        _circle(FontAwesomeIcons.google),
        _circle(FontAwesomeIcons.facebookF),
        _circle(FontAwesomeIcons.apple),
        _circle(FontAwesomeIcons.twitter),
      ],
    );
  }
}