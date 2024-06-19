import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/service/auth_service.dart';
import 'package:nectar/core/viewmodel/login_view_model.dart';
import 'package:nectar/widget/button/primary_button.dart';
import 'package:provider/provider.dart';

@RoutePage()
class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<LoginViewModel>();
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topCenter,
            image: AssetImage('asset/images/nectar_login_image.png'),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Get your groceries\nwith nectar',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              TextField(
                cursorColor: const Color(0xff7C7C7C),
                // controller: model.phone,
                onTap: () {
                  model.navigateToPhone();
                  print('on tap');
                },
                readOnly: true,
                decoration: const InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffE2E2E2),
                    ),
                  ),
                  prefixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('🇮🇳'),
                      SizedBox(
                        width: 12,
                      ),
                      Text('+91')
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  'Or connect with social media',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              PrimaryButton.icon(
                title: 'Continue with Google',
                onPressed: () {
                  locator<AuthService>().googleSignIn();
                },
                color: const Color(0xff5383EC),
                icon: SvgPicture.asset('asset/icon/google_login_icon.svg'),
              ),
              const SizedBox(
                height: 20,
              ),
              PrimaryButton.icon(
                title: 'Continue with Facebook',
                onPressed: () {},
                color: const Color(0xff4A66AC),
                icon: SvgPicture.asset('asset/icon/facebook_login_icon.svg'),
              ),
              const SizedBox(
                height: 74,
              )
            ],
          ),
        ),
      ),
    );
  }
}
