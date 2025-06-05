import 'package:easy_localization/easy_localization.dart';
import 'package:farmer_admin/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:intl/intl.dart';

import '../screens/chat_screen/controller/chat_controller.dart';
import '../utils/app_colors.dart';
import '../utils/app_images.dart';
import '../utils/app_styles.dart';

class ChatListView extends StatelessWidget {
  final ChatController controller = Get.find();

  ChatListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // height: 38,
          width: MediaQuery.of(context).size.width / 4,
          decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: kBlackTextColor.withOpacity(0.2))),
          child: Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 3),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 5.5,
                    child: TextField(
                      style: AppStyles.blackTextStyle()
                          .copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 0,top: 10),
                        hintText: "kSearchByUserId".tr(),
                        fillColor: kWhiteColor,
                        hintStyle:
                        AppStyles.blackTextStyle()
                            .copyWith(
                          fontSize: 14,
                          fontWeight:
                          FontWeight.w400,
                          color: kBlackTextColor
                              .withOpacity(
                            0.2,),),
                        prefixIcon: Icon(
                          Icons.search_sharp,
                          size: 16,
                          color: kBlackTextColor
                              .withOpacity(0.2),
                        ),
                        focusColor: kWhiteColor,
                        hoverColor: kWhiteColor,
                        focusedBorder:
                        const UnderlineInputBorder(
                          borderSide:
                          BorderSide.none,),
                        enabledBorder:
                        const UnderlineInputBorder(
                          borderSide:
                          BorderSide.none,),
                        border:
                        const UnderlineInputBorder(
                          borderSide:
                          BorderSide.none,),),
                    ),
                  ),
                ),
                Text(
                  '⌘/',
                  style: AppStyles.greyTextStyle()
                      .copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: kBlackTextColor
                        .withOpacity(0.2),),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 7,),
        Expanded(
          child: Obx(
                () => ListView.builder(
              itemCount: controller.chatRooms.length,
              itemBuilder: (context, index) {
                var chatRoom = controller.chatRooms[index];
                return InkWell(
                  onTap: () => controller.selectChatRoom(chatRoom),
                  child: Obx(
                        () => Container(
                      padding: EdgeInsets.only(
                        right: 7,
                        top: 12,
                        bottom: 12,
                      ),
                      decoration: BoxDecoration(
                        color:
                        controller.selectedChatRoom.value != null &&
                            controller.selectedChatRoom.value!.id ==
                                chatRoom.id
                            ? kPrimaryColor.withOpacity(0.1)
                            : Colors.transparent,
                        border: Border(bottom: BorderSide(color: kWhiteColor)),
                      ),
                      child: Row(
                        children: [
                          Stack(
                            children: [
                              SizedBox(height: 60, width: 51),
                              Positioned(
                                left: 0,
                                child: Container(
                                  height: 60,
                                  width: 48,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                      image: AssetImage(kUserImage),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 0,
                                top: 0,
                                child: Container(
                                  height: 12,
                                  width: 12,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: kWhiteColor,
                                  ),
                                  child: Center(
                                    child: Container(
                                      height: 8,
                                      width: 8,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: kPrimaryColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 14),
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      chatRoom.participants.first.name,
                                      style: AppStyles.blackTextStyle().copyWith(
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                    chatRoom.unreadCount > 0
                                        ? CircleAvatar(
                                      radius: 10,
                                      backgroundColor: kPrimaryColor,
                                      child: Center(
                                        child: Text(
                                          '${chatRoom.unreadCount}',
                                          style: AppStyles.whiteTextStyle()
                                              .copyWith(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    )
                                        : SizedBox.shrink(),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(right: 15),
                                        child: Text(
                                          chatRoom.lastMessage.text,
                                          maxLines: 1,
                                          style: AppStyles.whiteTextStyle().copyWith(
                                            color: kGreyShade5Color,
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.w400,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ),
                                    ),

                                    Text(
                                      DateFormat(
                                        'hh:mm a',
                                      ).format(chatRoom.lastMessage.sentAt),
                                      style: AppStyles.whiteTextStyle().copyWith(
                                        color: kGreyShade5Color,
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}