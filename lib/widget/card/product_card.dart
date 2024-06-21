import 'package:flutter/material.dart';
import 'package:nectar/core/viewmodel/login_view_model.dart';
import 'package:provider/provider.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String productname;
  final String description;
  final String price;
  const ProductCard(
      {super.key,
      required this.image,
      required this.productname,
      required this.description,
      required this.price});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<LoginViewModel>();
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        width: 173,
        height: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            border: Border.all(
              color: const Color(0xffE2E2E2),
            )),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: GestureDetector(
            onTap: () {
              model.navigateToProductDetails();
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(image)),
                const SizedBox(
                  height: 18,
                ),
                Text(
                  productname,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  description,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 130,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        price,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const Expanded(child: SizedBox()),
                      IconButton(
                        style: const ButtonStyle(
                          shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(17),
                              ),
                            ),
                          ),
                          backgroundColor: WidgetStatePropertyAll(
                            Color(0xff53B175),
                          ),
                        ),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
