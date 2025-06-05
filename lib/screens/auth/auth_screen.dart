import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_styles.dart';
import '../../custom_widgets/auth_component.dart';
import '../../custom_widgets/custom_button.dart';
import '../../custom_widgets/language_dialog.dart';
import '../../utils/app_strings.dart';
import 'controller/auth_controller.dart';

class AuthScreen extends GetView<AuthController> {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: AuthComponent(
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("kSignIn".tr(),style: AppStyles.blackTextStyle().copyWith(fontSize: 23.sp,fontWeight: FontWeight.w700,),),
          
              SizedBox(height: 8),
              Text(
                "kSignInSubtitle".tr(),
                style: AppStyles.blackTextStyle().
                copyWith(fontSize: 15,fontWeight: FontWeight.w400,color: kGreyShade5Color),),
              SizedBox(height: 57),
          
              Text("kEmail".tr(),style: AppStyles.blackTextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w500),),
              SizedBox(height: 4),
              SizedBox(
                height: 44,
                child: TextField(
                  style: AppStyles.blackTextStyle().copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                  ),
                  decoration: InputDecoration(
                    hintText: "debra.holt@example.com",
                    hintStyle: AppStyles.blackTextStyle().copyWith(
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
              SizedBox(height: 20),
              Text("kPassword".tr(),style: AppStyles.blackTextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w500),),
              SizedBox(height: 4),
              Obx(
                    () => SizedBox(
                      height: 44,
                      child: TextField(
                        style: AppStyles.blackTextStyle().copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                        ),
                        obscuringCharacter: '•',
                        obscureText: controller.isPasswordHidden.value,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          hintText: "kPassword".tr(),
                          hintStyle: AppStyles.blackTextStyle().copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            color: kGreyShade5Color
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              controller.isPasswordHidden.value
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: kGreyShade5Color,
                            ),
                            onPressed: controller.togglePasswordVisibility,
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
                        ),
                      ),
                    ),
              ),
              SizedBox(height: 14),
              Row(
                children: [
                  Obx(() => GestureDetector(
                    onTap: (){
                      controller.isRemember.value = !controller.isRemember.value;
                    },
                    child: Container(
                      height: 16,
                      width: 16,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                              color: kGreyShade5Color
                          )
                      ),
                      child: Center(child: controller.isRemember.value ? Icon(Icons.check,color: kPrimaryColor,size: 12,) : SizedBox()),
                    ),
                  ),),
                  SizedBox(width: 8,),
                  Text(
                    "kRememberMe".tr(),
                    style: AppStyles.blackTextStyle().copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: (){
                      Get.toNamed(kSendOtpScreenRoute);
                    },
                    child: Text(
                      "kForgotPassword".tr(),
                      style: AppStyles.blackTextStyle().copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32),
              CustomButton(
                width: MediaQuery.of(context).size.width,
                title: "kSignIn".tr(),
                color: kPrimaryColor,
                borderColor: kPrimaryColor,
                onTap: () {
                  Get.toNamed(kDashboardScreenRoute);
                },
                height: 44,
              ),
              SizedBox(height: 220.h,),
              Center(
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: (){
                      Get.dialog(LanguageDialog());
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: kPrimaryColor
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.language_outlined,color: kWhiteColor,size: 16,),
                            SizedBox(width: 9,),
                            Text(controller.selectedLanguageCode.value == "en" ? "kEnglish".tr() : "kArabic".tr(),style: AppStyles.whiteTextStyle().copyWith(fontSize: 12,fontWeight: FontWeight.w600),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
