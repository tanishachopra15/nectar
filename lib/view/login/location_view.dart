import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/app_router.dart';
import 'package:nectar/widget/button/primary_button.dart';

@RoutePage()
class LocationView extends StatelessWidget {
  const LocationView({super.key});

  @override
  Widget build(BuildContext context) {
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
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  const TextField(
                    autofocus: false,
                    decoration: InputDecoration(
                      label: Text('Your zone'),
                      suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const TextField(
                    autofocus: false,
                    decoration: InputDecoration(
                      label: Text('Your area'),
                      suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  PrimaryButton.primary(
                      title: 'Submit',
                      onPressed: () {},
                      color: Theme.of(context).primaryColor)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
