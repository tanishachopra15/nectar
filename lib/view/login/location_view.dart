import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/app_router.dart';
import 'package:nectar/core/viewmodel/login_view_model.dart';
import 'package:nectar/widget/button/primary_button.dart';
import 'package:nectar/widget/textfeild/primary_text_feild.dart';
import 'package:nectar/widget/textfeild/primary_type_ahead_feild.dart';
import 'package:provider/provider.dart';

@RoutePage()
class LocationView extends StatelessWidget {
  LocationView({super.key});
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
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 40,
            ),
            Image.asset('asset/images/nectar_location_image.png'),
            const SizedBox(
              height: 40,
            ),
            Text(
              'Select your location',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              textAlign: TextAlign.center,
              "Switch on your location to stay in tune with what’s happening in your area ",
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: const Color(0xff7C7C7C),
                  ),
            ),
            const SizedBox(
              height: 90,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    PrimaryTypeAheadFeild<String>(
                      controller: model.zoneController,
                      itemBuilder: (context, value) {
                        return ListTile(
                          title: Text(value),
                        );
                      },
                      onSelected: (value) {
                        model.setZones(value);
                      },
                      suggestionsCallback: (value) {
                        return model.zones
                            .where((e) =>
                                e.toLowerCase().contains(value.toLowerCase()))
                            .toList();
                      },
                      builder: (context, controller, focusNode) {
                        return PrimaryTextFeild(
                          title: 'Your zone',
                          controller: controller,
                          focusNode: focusNode,
                          validator: model.validateZone,
                          suffixIcon:
                              const Icon(Icons.keyboard_arrow_down_rounded),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    PrimaryTypeAheadFeild<String>(
                      controller: model.areaController,
                      itemBuilder: (context, value) {
                        return ListTile(
                          title: Text(value),
                        );
                      },
                      onSelected: (value) {
                        model.setAreas(value);
                      },
                      suggestionsCallback: (value) {
                        return model.areas
                            .where((e) =>
                                e.toLowerCase().contains(value.toLowerCase()))
                            .toList();
                      },
                      builder: (context, controller, focusNode) {
                        return PrimaryTextFeild(
                          title: 'Your area',
                          controller: controller,
                          focusNode: focusNode,
                          validator: model.validateArea,
                          suffixIcon:
                              const Icon(Icons.keyboard_arrow_down_rounded),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    PrimaryButton.primary(
                        title: 'Submit',
                        onPressed: () {
                          if (formKey.currentState!.validate()) {}
                        },
                        color: Theme.of(context).primaryColor)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
