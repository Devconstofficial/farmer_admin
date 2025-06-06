import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import '../screens/auth/controller/auth_controller.dart';
import '../utils/app_colors.dart';
import '../utils/app_images.dart';
import '../utils/app_styles.dart';
import 'custom_button.dart';

class LanguageDialog extends StatelessWidget {
  const LanguageDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthController menuController = Get.put(AuthController());
    String currentLang = menuController.selectedLanguageCode.value;
    Locale locale = Localizations.localeOf(context);

    return Dialog(
      backgroundColor: kPrimaryColor,
      insetPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        width: 361,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(7),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 9),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 16,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 15,),
                  Text(
                    "kLanguage".tr(),
                    style: AppStyles.whiteTextStyle().copyWith(
                      fontSize: 16,
                    ),
                  ),
                  GestureDetector(
                      onTap: (){
                        Get.back();
                      },
                      child: Image.asset(kCrossCircleIcon,height: 16,width: 16,))
                ],
              ),
              CustomButton(
                title: "kEnglish".tr(),
                onTap: () {
                  context.setLocale(const Locale('en', 'US'));
                  menuController.changeLanguage('en');
                  Get.back();
                },
                color: locale.languageCode == 'en' ? kWhiteColor : kPrimaryColor,
                textColor: locale.languageCode == 'en' ? kPrimaryColor : kWhiteColor,
                borderColor: kWhiteColor,
              ),
              CustomButton(
                title: "kArabic".tr(),
                onTap: () {
                  context.setLocale(const Locale('ar', 'SA'));
                  menuController.changeLanguage('ar');
                  Get.back();
                },
                color: locale.languageCode == 'ar' ? kWhiteColor : kPrimaryColor,
                textColor: locale.languageCode == 'ar' ? kPrimaryColor : kWhiteColor,
                borderColor: kWhiteColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
