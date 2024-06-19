import 'dart:developer';
import 'package:auto_route/auto_route.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/app_router.dart';
import 'package:nectar/core/viewmodel/login_view_model.dart';
import 'package:nectar/widget/textfeild/primary_text_feild.dart';
import 'package:provider/provider.dart';

@RoutePage()
class PhoneView extends StatelessWidget {
  PhoneView({super.key});

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
              'Enter your mobile number',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Mobile number',
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
                keyboardType: TextInputType.phone,
                // controller: model.phone,
                autofocus: true,
                validator: model.validatePhoneNumber,
                onChanged: model.setPhoneNumber,
                prefixIcon: GestureDetector(
                  onTap: () {
                    showCountryPicker(
                        context: context,
                        showPhoneCode: true,
                        onSelect: model.setCountry);
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(model.country?.flagEmoji ?? '🇮🇳'),
                      const SizedBox(
                        width: 12,
                      ),
                      Text('+${model.country?.phoneCode ?? "91"}')
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          shape: const CircleBorder(),
          onPressed: () async {
            if (formKey.currentState!.validate()) {
              log(model.phoneNumber);
              await model.signInWithOtp();
            }
          },
          child: const Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.white,
          )),
    );
  }
}
