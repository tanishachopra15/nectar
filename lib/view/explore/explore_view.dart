import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nectar/widget/textfield/primary_search_textfiled.dart';

@RoutePage()
class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 8,
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                'Find Products',
                style: TextStyle(
                    fontFamily: 'Gilroy-Bold',
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const PrimarySearchTextfiled(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 14,
                    mainAxisSpacing: 14,
                  ),
                  itemCount: 16,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.green),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      height: 190,
                      width: 175,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'asset/images/explore_veg_image.png',
                            width: 111,
                            height: 74,
                          ),
                          const SizedBox(height: 10,),
                          Text('Frash Fruits\n& Vegetable',style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontFamily: 'Gilroy-Bold'),)
                        ],
                      ),
                    );
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
