import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nectar/core/app_router.gr.dart';
import 'package:nectar/widget/button/primary_button.dart';

@RoutePage()
class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('asset/images/onboarding_image.png'),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 0, 30, 80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset('asset/icon/nectar_logo.png'),
              const Text(
                'Welcome\nto our store',
                style: TextStyle(color: Color(0xffFFFFFF), fontSize: 48),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 19,),
              const Text(
                'Get your groceries in as fast as one hour',
                style: TextStyle(color: Color(0xffD9D9D9), fontSize: 16),
              ),
              const SizedBox(
                height: 40,
              ),
              PrimaryButton.primary(
                title: 'Get Started',
                onPressed: () {
                  context.router.push(
                    const LoginRoute(),
                  );
                },
                color: const Color(0xff53B175),
              ),
              // ElevatedButton(
              //   style: const ButtonStyle(
              //     padding: WidgetStatePropertyAll(
              //       EdgeInsets.fromLTRB(100, 20, 100, 20),
              //     ),
              //     backgroundColor: WidgetStatePropertyAll(
              //       Color(0xff53B175),
              //     ),
              //   ),
              //   onPressed: () {
              //     context.router.push(
              //       const LoginRoute(),
              //     );
              //   },
              //   child: const Text(
              //     'Get Started',
              //     style: TextStyle(
              //       color: Color(0xffFFF9FF),
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
