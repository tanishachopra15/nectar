import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/app_router.dart';
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
              const SizedBox(
                height: 19,
              ),
              Text(
                'Get your groceries in as fast as one hour',
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: const Color(0xffD9D9D9),
                    ),
              ),
              const SizedBox(
                height: 40,
              ),
              PrimaryButton.primary(
                title: 'Get Started',
                onPressed: () {
                  locator<AppRouter>().push(
                    const LoginRoute(),
                  );
                },
                color: Theme.of(context).primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
