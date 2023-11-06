

import 'package:books_app/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:books_app/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utilis/styles.dart';
import 'books_horizontal_listview.dart';
import 'best_seller_listview.dart';


class HomeViewBody extends StatelessWidget {


  const HomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers:
      [
        SliverToBoxAdapter(
           child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                BooksHoriListView(),
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 30),
                  child: Text('Best Seller',style: Styles.textStyle20,),
                ),
                SizedBox(height: 20,),
              ],
            )
        ),
        SliverFillRemaining(
          child: BestSellerListView()
          ,
        )
      ],
    );
  }
}
