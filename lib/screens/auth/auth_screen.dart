import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_styles.dart';
import '../../custom_widgets/auth_component.dart';
import '../../custom_widgets/custom_button.dart';
import '../../utils/app_strings.dart';
import 'controller/auth_controller.dart';

class AuthScreen extends GetView<AuthController> {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: AuthComponent(
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Sign In",style: AppStyles.blackTextStyle().copyWith(fontSize: 40.sp,fontWeight: FontWeight.w700,),),

            SizedBox(height: 8),
            Text(
              "Please fill your detail to access your account.",
              style: AppStyles.blackTextStyle().
              copyWith(fontSize: 15,fontWeight: FontWeight.w400,color: kGreyShade5Color),),
            SizedBox(height: 57),

            Text("Email",style: AppStyles.blackTextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w500),),
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
            Text("Password",style: AppStyles.blackTextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w500),),
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
                        hintText: "Password",
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
                  "Remember me",
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
                    "Forgot Password?",
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
              title: "Sign In",
              color: kPrimaryColor,
              borderColor: kPrimaryColor,
              onTap: () {
                Get.toNamed(kDashboardScreenRoute);
              },
              height: 44,
            ),
          ],
        ),
      ),
    );
  }
}
