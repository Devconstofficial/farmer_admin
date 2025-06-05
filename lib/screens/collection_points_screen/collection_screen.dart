import 'package:easy_localization/easy_localization.dart';
import 'package:farmer_admin/custom_widgets/user_card.dart';
import 'package:farmer_admin/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_images.dart';
import '../../../utils/app_styles.dart';
import '../../custom_widgets/approve_dialoge.dart';
import '../../custom_widgets/custom_button.dart';
import '../../custom_widgets/custom_textfield.dart';
import '../../custom_widgets/dashboard_container.dart';
import '../../custom_widgets/delete_dialog.dart';
import '../../custom_widgets/detail_row.dart';
import '../../custom_widgets/revenue_chat.dart';
import '../sidemenu/sidemenu.dart';
import 'controller/collection_controller.dart';

class CollectionScreen extends GetView<CollectionController> {
  const CollectionScreen({super.key});

  Widget detailsDialogue(BuildContext context) {
    return Dialog(
      backgroundColor: kWhiteColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: SizedBox(
        width: 693,
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 46,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: kGreyShade5Color, width: 0.4),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "kDetailOverview".tr(),
                      style: AppStyles.blackTextStyle().copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: kBlackColor,
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: SvgPicture.asset(
                        kCloseIcon,
                        height: 16,
                        width: 16,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UserCard(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return showChatDialogue(context);
                          },
                        );
                      },
                    ),
                    SizedBox(width: 15),
                    UserCard(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return showChatDialogue(context);
                          },
                        );
                      },
                    ),
                    SizedBox(width: 15),
                    UserCard(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return showChatDialogue(context);
                          },
                        );
                      },
                    ),
                    SizedBox(width: 15),
                    UserCard(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return showChatDialogue(context);
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget showChatDialogue(BuildContext context) {
    return Dialog(
      backgroundColor: kWhiteColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: SizedBox(
        width: 693,
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 46,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: kGreyShade5Color, width: 0.4),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "kChatOverview".tr(),
                      style: AppStyles.blackTextStyle().copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: kBlackColor,
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: SvgPicture.asset(
                        kCloseIcon,
                        height: 16,
                        width: 16,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              SizedBox(
                // width: 329,
                child: ListView.builder(
                  itemCount: controller.messages.length,
                  shrinkWrap: true,
                  // padding: EdgeInsets.all(0),
                  itemBuilder: (context, index) {
                    final message = controller.messages[index];
                    final isMe = message['isMe'] as bool;
                    final text = message['text'] as String;
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12.0),
                      child: Align(
                        alignment:
                            isMe ? Alignment.centerRight : Alignment.centerLeft,
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 12),
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 16,
                          ),
                          decoration: BoxDecoration(
                            color:
                                isMe
                                    ? kPrimaryColor.withOpacity(0.1)
                                    : kWhiteColor2,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                              bottomLeft: Radius.circular(isMe ? 16 : 0),
                              bottomRight: Radius.circular(isMe ? 0 : 16),
                            ),
                          ),
                          constraints: BoxConstraints(maxWidth: 329),
                          child: Text(
                            text,
                            style: AppStyles.blackTextStyle().copyWith(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget addCollectionDialogue(BuildContext context) {
    return Dialog(
      backgroundColor: kWhiteColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: SizedBox(
        width: 400,
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            spacing: 32,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: SvgPicture.asset(kCloseIcon, height: 16, width: 16),
                  ),
                ],
              ),
              Column(
                spacing: 8,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "kName".tr(),
                        style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      CustomTextField(hintText: "kName".tr(), height: 40),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "kLocation".tr(),
                        style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      CustomTextField(hintText: "kLocation".tr(), height: 40),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "kDeliveryFeeMax".tr(),
                        style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      CustomTextField(hintText: "60", height: 40),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    title: "kCancel".tr(),
                    onTap: () {
                      Get.back();
                    },
                    borderColor: kBorderColor2,
                    color: kWhiteColor,
                    height: 40,
                    width: 79,
                    textSize: 14,
                    fontWeight: FontWeight.w600,
                    textColor: kDarkBlueColor,
                  ),

                  CustomButton(
                    title: "kAddCollectionPoint".tr(),
                    onTap: () {
                      Get.back();
                    },
                    height: 40,
                    width: 172,
                    textSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        // CommonCode.unFocus(context);
      },
      child: Scaffold(
        backgroundColor: kBgColor,
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SideMenu(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 80,
                      decoration: BoxDecoration(color: kWhiteColor),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 32,
                        ),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "kCollectionPoint".tr(),
                              style: AppStyles.blackTextStyle().copyWith(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600,
                              ),
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
                            SizedBox(width: 22),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: AppStyles.customBorder16,
                              ),
                              child: ClipRRect(
                                borderRadius: AppStyles.customBorder16,
                                child: Image.asset(kAvatar, fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(width: 18),
                            Column(
                              spacing: 3,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Musfiq",
                                  style: AppStyles.blackTextStyle().copyWith(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: kBlueColor,
                                  ),
                                ),
                                Text(
                                  "kAdmin".tr(),
                                  style: AppStyles.greyTextStyle().copyWith(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kGreyShade7Color,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 20),
                            InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                size: 15,
                                color: kBlueColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(32),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: DashboardContainer(
                                  width: 219,
                                  height: 112,
                                  color: kPrimaryColor,
                                  title: "kTotalCollectionPoints".tr(),
                                  totalNumber: '\$ 1200',
                                ),
                              ),
                              Spacer(),
                              CustomButton(
                                title: "kAddCollectionPoint".tr(),
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder:
                                        (context) =>
                                            addCollectionDialogue(context),
                                  );
                                },
                                width: 229.w,
                                textSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ],
                          ),
                          SizedBox(height: 32.h),
                          Obx(
                            () => Container(
                              width: width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(14.r),
                                  topRight: Radius.circular(14.r),
                                ),
                                border: Border.all(
                                  color: kGreyColor,
                                  width: 0.3,
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Container(
                                    height: 49,
                                    decoration: BoxDecoration(
                                      color: kPrimaryColor,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(14),
                                        topRight: Radius.circular(14),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: width,
                                    child: DataTable(
                                      columnSpacing: 0,
                                      headingRowHeight: 49,
                                      columns: [
                                        DataColumn(
                                          label: Flexible(
                                            child: Text(
                                              "kCollectionPointId".tr(),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              style: AppStyles.whiteTextStyle()
                                                  .copyWith(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 14.sp,
                                                  ),
                                            ),
                                          ),
                                        ),
                                        DataColumn(
                                          label: Flexible(
                                            child: Text(
                                              "kName".tr(),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              style: AppStyles.whiteTextStyle()
                                                  .copyWith(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 14.sp,
                                                  ),
                                            ),
                                          ),
                                        ),
                                        DataColumn(
                                          label: Flexible(
                                            child: Text(
                                              "kAddress".tr(),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              style: AppStyles.whiteTextStyle()
                                                  .copyWith(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 14.sp,
                                                  ),
                                            ),
                                          ),
                                        ),
                                        DataColumn(
                                          label: Flexible(
                                            child: Text(
                                              "kAssignedEmployee".tr(),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              style: AppStyles.whiteTextStyle()
                                                  .copyWith(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 14.sp,
                                                  ),
                                            ),
                                          ),
                                        ),
                                        DataColumn(
                                          headingRowAlignment:
                                              MainAxisAlignment.center,
                                          label: Flexible(
                                            child: Text(
                                              "kActions".tr(),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              style: AppStyles.whiteTextStyle()
                                                  .copyWith(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 14.sp,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ],
                                      rows:
                                          controller.currentPageUsers
                                              .map(
                                                (user) => _buildDataRow(
                                                  user['id']!,
                                                  user['name']!,
                                                  user['Address']!,
                                                  user['assignedEmp']!,
                                                  context,
                                                ),
                                              )
                                              .toList(),
                                      dataRowMaxHeight: 65,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  DataRow _buildDataRow(
    String id,
    String name,
    String address,
    String assignedEmp,
    context,
  ) {
    return DataRow(
      cells: [
        DataCell(
          Text(
            id,
            textAlign: TextAlign.center,
            style: AppStyles.blackTextStyle().copyWith(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        DataCell(
          Text(
            name,
            textAlign: TextAlign.center,
            style: AppStyles.blackTextStyle().copyWith(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        DataCell(
          Text(
            address,
            textAlign: TextAlign.center,
            style: AppStyles.blackTextStyle().copyWith(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        DataCell(
          Text(
            assignedEmp,
            textAlign: TextAlign.center,
            style: AppStyles.blackTextStyle().copyWith(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        DataCell(
          Center(
            child: Container(
              height: 32,
              width: 96.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: kCreamColor,
                border: Border.all(color: kGreyShade5Color, width: 0.4),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return DeleteDialog();
                            },
                          );
                        },
                        child: SvgPicture.asset(
                          kDeleteIcon,
                          height: 19.h,
                          width: 19.w,
                        ),
                      ),
                    ),
                    Container(width: 0.4, color: kGreyShade5Color),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return detailsDialogue(context);
                            },
                          );
                        },
                        child: SvgPicture.asset(
                          kEyeIcon,
                          height: 19.h,
                          width: 19.w,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
