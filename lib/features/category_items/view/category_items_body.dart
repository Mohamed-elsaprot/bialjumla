import 'package:bialjumla/features/category_items/view/widgets/products_gridview.dart';
import 'package:bialjumla/features/category_items/view/widgets/search_appbar.dart';
import 'package:bialjumla/features/category_items/view/widgets/side_cat_slider.dart';
import 'package:flutter/material.dart';

class CategoryItemsBody extends StatelessWidget {
  const CategoryItemsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,scrolledUnderElevation: 0,
        title: SearchAppbar(),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 3,
            child: SideCatSlider(),
          ),
          Expanded(
            flex: 12,
            child: ProductsGridview(),
          ),
        ],
      ),
    );
  }
}
