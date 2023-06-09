import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Padding(
          padding: kPadding,
          child: CustomBookDetailsAppBar(),
        ),
      ],
    );
  }
}
