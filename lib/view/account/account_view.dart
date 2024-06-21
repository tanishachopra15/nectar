import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
          ListView.separated(
            separatorBuilder: (context, index) {
              return Divider(
                color: Color(0xffE2E2E2),
              );
            },
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  SvgPicture.asset('asset/icon/account_order_icon.svg'),
                  const Text('Orders'),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios_rounded))
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
