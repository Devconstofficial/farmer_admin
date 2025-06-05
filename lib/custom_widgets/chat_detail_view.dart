import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../screens/chat_screen/controller/chat_controller.dart';
import '../utils/app_colors.dart';
import '../utils/app_images.dart';
import '../utils/app_styles.dart';

class ChatDetailView extends StatelessWidget {
  final ChatController controller = Get.find();

  ChatDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
          () =>
      controller.selectedChatRoom.value == null
          ? Center(
        child: Text(
          "kSelectChatToView".tr(),
          style: AppStyles.blackTextStyle().copyWith(fontSize: 16.sp,fontWeight: FontWeight.w500),
        ),
      )
          : Column(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 15,left: 6),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: kWhiteColor)),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(kAvatar2),
                ),
                SizedBox(width: 14),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      controller
                          .selectedChatRoom
                          .value!
                          .participants
                          .first
                          .name,
                      style: TextStyle(
                        color: kBlackTextColor,
                        fontSize: 14.sp,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Container(
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
                        SizedBox(width: 3),
                        Text(
                          "kOnline".tr(),
                          style: TextStyle(
                            color: kPurpleShadeColor,
                            fontSize: 12.sp,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          '12:55 PM',
                          style: TextStyle(
                            color: kGreyShade5Color,
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child:
            controller.selectedChatRoom.value!.messages.isEmpty
                ? Center(
              child: Text(
                "kNoMessages".tr(),
                style: AppStyles.whiteTextStyle(),
              ),
            )
                : ListView.builder(
              padding: EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 15,
              ),
              itemCount:
              controller
                  .selectedChatRoom
                  .value!
                  .messages
                  .length,
              itemBuilder: (context, index) {
                final message =
                controller
                    .selectedChatRoom
                    .value!
                    .messages[index];
                final isMe = message.senderId == '2';
                return Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Column(
                    crossAxisAlignment:
                    isMe
                        ? CrossAxisAlignment.end
                        : CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment:
                        isMe
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 12,
                          ),
                          constraints: BoxConstraints(
                            maxWidth: 330,
                          ),
                          decoration: BoxDecoration(
                            color:
                            isMe
                                ? kCreamColor3
                                : kPrimaryColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                              bottomLeft: Radius.circular(
                                isMe ? 16 : 0,
                              ),
                              bottomRight: Radius.circular(
                                isMe ? 0 : 16,
                              ),
                            ),
                            border: Border.all(
                              color: isMe ? kBorderColor4 : kPrimaryColor
                            )
                          ),
                          child: Column(
                            crossAxisAlignment:
                            isMe
                                ? CrossAxisAlignment.end
                                : CrossAxisAlignment.start,
                            children: [
                              Text(
                                message.text,
                                style:
                                AppStyles.blackTextStyle()
                                    .copyWith(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w400,
                                  color: isMe ? kBlackTextColor : kWhiteColor
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        DateFormat(
                          'hh:mm a',
                        ).format(message.sentAt),
                        style: AppStyles.greyTextStyle()
                            .copyWith(fontSize: 12.sp),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 10,
            ),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                border: Border.all(color: kBorderColor5),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Container(
                    width: 29,
                    height: 29,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Icon(Icons.add, color: kWhiteColor),
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: TextField(
                      controller: controller.messageCont,
                      style: AppStyles.blackTextStyle().copyWith(
                        fontSize: 14.sp,
                      ),
                      decoration: InputDecoration(
                        hintText: "kYourMessage".tr(),
                        hintStyle: AppStyles.whiteTextStyle().copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: kGreyShade5Color
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      controller.sendMessage(
                        controller.messageCont.text,
                        '2',
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "kSend".tr(),
                            style: AppStyles.whiteTextStyle().copyWith(
                              fontSize: 12.sp,
                            ),
                          ),
                          SizedBox(width: 8),
                          Image.asset(
                            kSendIcon,
                            height: 20,
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}