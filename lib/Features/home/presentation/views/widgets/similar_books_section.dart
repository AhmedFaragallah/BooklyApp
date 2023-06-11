import 'package:bookly_app/Features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like',
              style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const SimilarBooksListView(),
        const SizedBox(
          height: 40,
        )
      ],
    );
  }
}
