import 'package:easy_localization/easy_localization.dart';
import 'package:farmer_admin/utils/app_strings.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_styles.dart';

class DeleteDialog extends StatelessWidget {
  const DeleteDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: kWhiteColor,
      insetPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
      child: Container(
        width: 400,
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(7),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 8,
              ),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(7),
                  topRight: Radius.circular(7),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "kDeleteEntry".tr(),
                    style: AppStyles.whiteTextStyle().copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Icon(Icons.close, color: kWhiteColor),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 14,
              ),
              child: Text(
                "kDeleteWarning".tr(),
                style: AppStyles.greyTextStyle().copyWith(
                  fontSize: 14,
                  color: kGreyShade6Color,
                ),
              ),
            ),
            Divider(height: 1, color: kGreyColor),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 14,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    style: TextButton.styleFrom(
                      foregroundColor: kGreyShade6Color,
                      backgroundColor: kWhiteColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                        side: BorderSide(
                          color: kGreyShade3Color.withOpacity(0.2),
                        ),
                      ),
                    ),
                    child: Text(
                      "kCancel".tr(),
                      style: AppStyles.blackTextStyle().copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: kGreyShade6Color,
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  TextButton(
                    onPressed: () {
                      // Handle delete action
                      Navigator.pop(context);
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: kWhiteColor,
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    child: Text(
                      "kDelete".tr(),
                      style: AppStyles.whiteTextStyle().copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
