import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CutomErrorWidget extends StatelessWidget {
  const CutomErrorWidget({super.key, required this.errorMassage});

  final String errorMassage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMassage,
        style: Styles.textStyle18,
        textAlign: TextAlign.center,
      ),
    );
  }
}
