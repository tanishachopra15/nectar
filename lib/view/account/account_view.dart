import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar/widget/button/primary_button.dart';

@RoutePage()
class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 20),
            child: Row(
              children: [
                Image.asset('asset/images/account_profile_image.png'),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Afsar Hossen',
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                              'asset/icon/account_edit_icon.svg'),
                        )
                      ],
                    ),
                    Text(
                      'Imshuvo97@gmail.com',
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                color: const Color(0xff7C7C7C),
                              ),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 8,
            itemBuilder: (context, index) {
              return Container(
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Color(0xffE2E2E2),
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25, top: 10, bottom: 10),
                  child: Row(
                    children: [
                      SvgPicture.asset('asset/icon/account_order_icon.svg'),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text('Orders'),
                      const SizedBox(
                        width: 200,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios_rounded),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: PrimaryButton.icon(
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .copyWith(color: Color(0xff53B175)),
              title: 'Log Out',
              onPressed: () {},
              color: Color(0xffF2F3F2),
              icon: const Icon(
                Icons.logout,
                color: Color(0xff53B175),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}
