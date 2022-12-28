import 'package:flutter/material.dart';

class CategoryCard extends StatefulWidget {
  const CategoryCard({Key? key}) : super(key: key);

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {

  late final iconImagePath;
  late final Color customColor;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 18.0),
      child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: customColor,
              borderRadius: BorderRadius.circular(20),

          ),
          child: Row(
            children: [
              Image.asset(iconImagePath,
              width: 55,)

            ],
          )
        // child: Image.asset(
        //     'assets/images/bx_search-alt.png')
      ),

    );
  }
}
