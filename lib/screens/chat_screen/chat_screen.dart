import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import '../../custom_widgets/chat_detail_view.dart';
import '../../custom_widgets/chat_list_view.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_images.dart';
import '../../utils/app_strings.dart';
import '../../utils/app_styles.dart';
import '../sidemenu/sidemenu.dart';
import 'controller/chat_controller.dart';

class ChatScreen extends StatelessWidget {
  final ChatController controller = Get.find();

  ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor.withOpacity(0.05),
      body: Row(
        children: [
          SideMenu(),
          Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 32),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "kInbox".tr(),
                            style: AppStyles.blackTextStyle().copyWith(
                                fontSize: 20.sp, fontWeight: FontWeight.w600),
                          ),
                          Spacer(),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: kPrimaryColor.withOpacity(0.12),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: SvgPicture.asset(
                                  kNotificationIcon,
                                  height: 15,
                                  width: 15,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 22,),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: AppStyles.customBorder16
                            ),
                            child: ClipRRect(
                              borderRadius: AppStyles.customBorder16,
                              child: Image.asset(kAvatar,fit: BoxFit.cover,),
                            ),
                          ),
                          SizedBox(width: 18,),
                          Column(
                            spacing: 3,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Musfiq",
                                style: AppStyles.blackTextStyle().copyWith(
                                    fontSize: 14.sp, fontWeight: FontWeight.w500,color: kBlueColor),
                              ),
                              Text(
                                "kAdmin".tr(),
                                style: AppStyles.greyTextStyle().copyWith(
                                    fontSize: 12.sp, fontWeight: FontWeight.w400,color: kGreyShade7Color),
                              ),
                            ],
                          ),
                          SizedBox(width: 20,),
                          InkWell(
                              onTap: (){},
                              child: Icon(Icons.keyboard_arrow_down_rounded,size: 15,color: kBlueColor,))
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(flex: 2, child: ChatListView()),
                        // VerticalDivider(width: 1, color: kPrimaryColor),
                        Expanded(flex: 5, child: ChatDetailView()),
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}