import 'package:flutter/material.dart';
import 'package:pathway/widgets/curvy_gradient_bg.dart';
import 'package:pathway/core/app_dimens.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pathway/widgets/primary_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CurvyGradientBg(
        children: [
          SafeArea(
            child: Padding(
              padding: AppDimens.welcomePadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(flex: 2),
                  Text(
                    'Welcome to\nPathway',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      height: 1.2,
                      fontSize: 34,
                      fontWeight: FontWeight.w700,
                      shadows: [
                        Shadow(
                          color: Colors.black.withOpacity(0.35),
                          blurRadius: 12,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Enter personal detail to  start your journey with us!',
                    style: GoogleFonts.poppins(
                      color: Colors.white.withOpacity(0.9),
                      fontSize: 16,
                    ),
                  ),
                  const Spacer(flex: 3),
                  Row(
                    children: [
                      Expanded(
                        child: PrimaryButton(
                          label: 'Login',
                          filled: false,
                          onPressed: () => Navigator.pushNamed(context, '/login'),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: SizedBox(
                          height: AppDimens.btnHeight,
                          child: ElevatedButton(
                            onPressed: () => Navigator.pushNamed(context, '/signup'),
                            child: Text('Sign Up', style: GoogleFonts.poppins(fontWeight: FontWeight.w600)),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
