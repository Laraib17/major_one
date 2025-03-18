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
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.8, 1),
            colors: <Color>[
              Color(0xff1f005c),
              Color(0xff5b0060),
              Color(0xff870160),
              Color(0xffac255e),
              Color(0xffca485c),
              Color(0xffe16b5c),
              Color(0xfff39060),
              Color(0xffffb56b),
            ], 
            tileMode: TileMode.mirror,
          ),
        ),
          child: Column(
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
              const SizedBox(height: 80),
              ElevatedButton(onPressed: (){}, child: Text('bag packed'))
            ],
          ),
        ),
      ),
    );
  }
}
