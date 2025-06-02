import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../screens/auth/controller/auth_controller.dart';
import '../utils/app_colors.dart';
import '../utils/app_images.dart';
import '../utils/app_styles.dart';

class AuthComponent extends StatelessWidget {
  Widget content;
  AuthComponent({super.key,required this.content});

  AuthController controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(kLogo,height: 74.h,width: 74.w,),
                  SizedBox(height: 107,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 130.0.w),
                    child: content,
                  )
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                height: height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Stack(
                    children: [
                      Image.asset(
                        kAuthFarmerImage,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                      ),

                      // Gradient 1: Top-right to center
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.center,
                            colors: [
                              kYellowColor1.withOpacity(0.54),
                              Colors.transparent,
                            ],
                          ),
                        ),
                      ),

                      // Gradient 2: Center overlay
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: [0.45, 0.55],
                            colors: [
                              kYellowColor2.withOpacity(0.44),
                              Colors.transparent,
                            ],
                          ),
                        ),
                      ),

                      // Gradient 3: Center to bottom-left
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.center,
                            end: Alignment.bottomLeft,
                            colors: [
                              Colors.transparent,
                              kDarkPrimaryColor1.withOpacity(0.7),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
