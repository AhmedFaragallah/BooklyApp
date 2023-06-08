import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookingRating extends StatelessWidget {
  const BookingRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        const Text(
          '4.8',
          style: Styles.textStyle16,
        ),
        Text(
          '(2390)',
          style: Styles.textStyle14.copyWith(color: const Color(0xff707070)),
        )
      ],
    );
  }
}
