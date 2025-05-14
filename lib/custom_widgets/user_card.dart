import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/app_styles.dart';

class UserCard extends StatelessWidget {
  VoidCallback onTap;
  UserCard({
    super.key,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 150,
      decoration: BoxDecoration(
        border: Border.all(color: kPrimaryColor, width: 1),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: 10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24,
                right: 24,),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: kPrimaryColor,
                    child: Center(
                      child: Text(
                        "MR",
                        style: AppStyles.whiteTextStyle().copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text(
                    "E12345",
                    style: AppStyles.blackTextStyle().copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Alice Smith",
                    style: AppStyles.blackTextStyle().copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12,),
            GestureDetector(
              onTap: onTap,
              child: Container(
                height: 42,
                width: 150,
                decoration: BoxDecoration(
                  color: kPrimaryColor
                ),
                child: Center(
                  child: Text(
                    "View Chat",
                    style: AppStyles.whiteTextStyle().copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
