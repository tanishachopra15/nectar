import 'package:auto_route/auto_route.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/app_router.dart';
import 'package:nectar/core/viewmodel/login_view_model.dart';
import 'package:provider/provider.dart';

@RoutePage()
class PhoneView extends StatelessWidget {
  const PhoneView({super.key});

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
              child: TextFormField(
                keyboardType: TextInputType.phone,
                textAlignVertical: TextAlignVertical.center,
                cursorColor: const Color(0xff7C7C7C),
                // controller: model.phone,
                autofocus: true,
                validator: model.validatePhoneNumber,
                decoration: InputDecoration(
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffE2E2E2),
                    ),
                  ),
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
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          shape: const CircleBorder(),
          onPressed: () {
            if (formKey.currentState!.validate()) {
              model.navigateToVerification();
            }
          },
          child: const Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.white,
          )),
    );
  }
}
