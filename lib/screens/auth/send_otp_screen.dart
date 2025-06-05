import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_styles.dart';
import '../../custom_widgets/auth_component.dart';
import '../../custom_widgets/custom_button.dart';
import '../../utils/app_strings.dart';
import 'controller/auth_controller.dart';

class SendOtpScreen extends GetView<AuthController> {
  const SendOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: AuthComponent(
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: (){
                      Get.back();
                    },
                    child: Icon(Icons.arrow_back_ios,color: kWhiteColor,size: 24,),
                  ),
                )
              ],
            ),
            SizedBox(height: 28),
            Text(
              "kForgotPassword".tr(),
              style: AppStyles.blackTextStyle().copyWith(
                fontSize: 32.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "kResetPasswordInstruction".tr(),
              style: AppStyles.blackTextStyle().
              copyWith(fontSize: 16,fontWeight: FontWeight.w400,color: kGreyShade5Color),),
            SizedBox(height: 56),
            Text("kEmail".tr(),style: AppStyles.blackTextStyle().copyWith(fontSize: 14.sp,fontWeight: FontWeight.w500),),
            SizedBox(height: 4),
            SizedBox(
              height: 44.h,
              child: TextField(
                style: AppStyles.blackTextStyle().copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400
                ),
                decoration: InputDecoration(
                  hintText: "debra.holt@example.com",
                  hintStyle: AppStyles.whiteTextStyle().copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    color: kGreyShade5Color
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                          color: kGreyShade5Color.withOpacity(0.55)
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                          color: kGreyShade5Color.withOpacity(0.55)
                      )
                  ),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                          color: kGreyShade5Color.withOpacity(0.55)
                      )
                  ),
                  // fillColor: kBlackColor,
                  // filled: true,
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: 14
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            CustomButton(
              width: MediaQuery.of(context).size.width,
              title: "kSubmit".tr(),
              color: kPrimaryColor,
              borderColor: kPrimaryColor,
              onTap: () {
                Get.toNamed(kVerifyScreenRoute);
              },
              height: 44,
            ),
          ],
        ),
      ),

    );
  }
}
