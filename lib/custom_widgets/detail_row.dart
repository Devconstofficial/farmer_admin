import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_styles.dart';

class DetailRowWidget extends StatelessWidget {
  String title;
  String detail;
  bool isEmployeePage;
  DetailRowWidget({super.key,required this.title, required this.detail,this.isEmployeePage = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$title:  ",
          style: AppStyles.blackTextStyle()
              .copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: kBlackTextColor
          ),
        ),
        Text(
          detail,
          style: AppStyles.blackTextStyle()
              .copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w200,
              color: isEmployeePage == true ? kPrimaryColor : kBlackTextColor
          ),
        ),
      ],
    );
  }
}
