import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CutomErrorWidget extends StatelessWidget {
  const CutomErrorWidget({super.key, required this.errorMassage});

  final String errorMassage;

  @override
  Widget build(BuildContext context) {
    return Text(
      errorMassage,
      style: Styles.textStyle18,
    );
  }
}
