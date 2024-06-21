import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar/widget/button/primary_button.dart';

import 'package:nectar/widget/card/breverage_card.dart';
import 'package:nectar/widget/checkbox/primary_check_box.dart';
import 'package:nectar/widget/textfield/primary_search_textfiled.dart';

@RoutePage()
class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> catrgories = [
      'Eggs',
      'Noodles & Pasta',
      'Chips & Crisps',
      'Fast Food'
    ];
    List<String> brand = [
      'Individual Collection',
      'Cocola',
      'Ifad',
      'Kazi Farmas'
    ];
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                const Expanded(
                    child: Padding(
                  padding: EdgeInsets.only(
                    left: 30,
                  ),
                  child: PrimarySearchTextfiled(),
                )),
                IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      // backgroundColor: Color(0xffB1B1B1),
                      context: context,
                      builder: (context) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25, top: 30),
                              child: Text(
                                'Categories',
                                style: Theme.of(context).textTheme.displayLarge,
                              ),
                            ),
                            ...List.generate(
                              catrgories.length,
                              (index) {
                                return PrimaryCheckBox(
                                  title: catrgories[index],
                                );
                              },
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 25,
                              ),
                              child: Text(
                                'Brand',
                                style: Theme.of(context).textTheme.displayLarge,
                              ),
                            ),
                            ...List.generate(
                              brand.length,
                              (index) {
                                return PrimaryCheckBox(
                                  title: brand[index],
                                );
                              },
                            ),
                            const SizedBox(
                              height: 100,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: PrimaryButton.primary(
                                  title: 'Apply Filter',
                                  onPressed: () {},
                                  color: Theme.of(context).primaryColor),
                            )
                          ],
                        );
                      },
                    );
                  },
                  icon: SvgPicture.asset('asset/icon/filter_icon.svg'),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      crossAxisSpacing: 14,
                      mainAxisSpacing: 14,
                      childAspectRatio: 0.69,
                      maxCrossAxisExtent: 173),
                  // padding: const EdgeInsets.symmetric(horizontal: 25),
                  itemCount: 16,
                  itemBuilder: (context, index) {
                    return const BreverageCard(
                        image: 'asset/images/breverage_coke_image.png',
                        productname: 'Diet Coke',
                        description: '355ml,Price',
                        price: '\$1.99');
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
