import 'package:flutter/material.dart';
import 'package:myapp/core/theme/app_pallete.dart';
import 'package:myapp/features/auth/presentation/widgets/auth_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class Signup_page extends StatefulWidget {
  const Signup_page({super.key});

  @override
  State<Signup_page> createState() => _Signup_pageState();
}

class _Signup_pageState extends State<Signup_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPallete.gradient1,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(child: Lottie.asset('assets/animation/first.json',height: 150,width: 150)),
          Text(
            "Sign Up",
            style: GoogleFonts.barriecito(
              textStyle: Theme.of(context).textTheme.displayLarge,
              fontSize: 48,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 40),
          AuthField(hintText: "Name"),
          const SizedBox(height: 20),
          AuthField(hintText: "E-mail"),
          const SizedBox(height: 20),
          AuthField(hintText: "Password"),
        ],
      ),
    );
  }
}
