import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/app_router.dart';
import 'package:nectar/core/viewmodel/login_view_model.dart';
import 'package:provider/provider.dart';

@RoutePage()
class VerificationView extends StatelessWidget {
  const VerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final model = context.watch<LoginViewModel>();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            locator<AppRouter>().maybePop();
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60,
            ),
            Text(
              'Enter your 4-digit code',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Code',
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: const Color(0xff7C7C7C),
                  ),
            ),
            const SizedBox(
              height: 12,
            ),
            Form(
               key: formKey,
              child: TextFormField(
               
                maxLength: 4,
                keyboardType: TextInputType.phone,
                textAlignVertical: TextAlignVertical.center,
                cursorColor: const Color(0xff7C7C7C),
                // autofocus: true,
                validator: model.validateVerification,
                decoration: const InputDecoration(
                  hintText: '- - - - ',
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffE2E2E2),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text('Resend code',
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .copyWith(color: const Color(0xff53B175))),
              )),
          FloatingActionButton(
            shape: const CircleBorder(),
            onPressed: () {
              if (formKey.currentState!.validate()) {
                model.navigateToLocation();
              }
            },
            child: const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
