import 'package:bookly_app/Features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const Padding(
          padding: kPadding,
          child: CustomBookDetailsAppBar(),
        ),
        const SizedBox(
          height: 36,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .24),
          child: const FeaturedListViewItem(),
        )
      ],
    );
  }
}
