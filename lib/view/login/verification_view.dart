import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/app_router.dart';
import 'package:nectar/core/viewmodel/login_view_model.dart';
import 'package:nectar/widget/textfield/primary_text_field.dart';
import 'package:provider/provider.dart';

@RoutePage()
class VerificationView extends StatelessWidget {
  VerificationView({super.key});

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
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
              child: PrimaryTextFeild(
                onChanged: model.setOtp,
                maxLength: 6,
                keyboardType: TextInputType.phone,
                autofocus: true,
                validator: model.validateVerification,
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
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                await model.verifyWithOtp();
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
