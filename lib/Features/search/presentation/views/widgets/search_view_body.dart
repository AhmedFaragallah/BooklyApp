import 'package:bookly_app/Features/search/presentation/views/widgets/search_custom_text_filed.dart';
import 'package:bookly_app/Features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: const [
        SearchCustomTextFiled(),
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: kPadding,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Search Result',
              style: Styles.textStyle18,
            ),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Expanded(
          child: SearchResultListView(),
        ),
      ],
    );
  }
}
