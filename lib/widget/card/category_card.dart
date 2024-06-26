import 'package:flutter/material.dart';
import 'package:nectar/core/model/category_model.dart';

class CategoryCard extends StatelessWidget {
  final int index;
  final CategoryModel category;
  final VoidCallback onTap;
  const CategoryCard({
    super.key,
    required this.index,
    required this.category,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(18),
      child: InkWell(
        borderRadius: BorderRadius.circular(18),
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.primaries[index].withOpacity(0.15),
            borderRadius: BorderRadius.circular(18),
          ),
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          width: 250,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                category.image,
                width: 70,
                height: 70,
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: Text(
                  category.name,
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: const Color(0xff3E423F),
                      ),
                ),
              ),
              const SizedBox(
                width: 14,
              )
            ],
          ),
        ),
      ),
    );
  }
}
