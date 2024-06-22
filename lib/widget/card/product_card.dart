import 'dart:developer';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String productname;
  final String description;
  final String price;
  final VoidCallback onTap;
  const ProductCard(
      {super.key,
      required this.image,
      required this.productname,
      required this.description,
      required this.price,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    log("This is the image ${image}");
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(15),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          width: 173,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: const Color(0xffE2E2E2),
            ),
          ),
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                  alignment: Alignment.center,
                  child: Image.network(image, height: 70)),
              const SizedBox(
                height: 25,
              ),
              Text(
                productname,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(
                height: 5,
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
    );
  }
}
