import 'package:easy_localization/easy_localization.dart';
import 'package:farmer_admin/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/quill_delta.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_images.dart';
import '../../../utils/app_styles.dart';
import 'package:flutter_quill/flutter_quill.dart';
import '../../custom_widgets/custom_button.dart';
import '../sidemenu/sidemenu.dart';
import 'controller/terms_controller.dart';

class TermsScreen extends GetView<TermsController> {
  const TermsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 32),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "kUsers".tr(),
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
                  Padding(
                    padding: const EdgeInsets.all(32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Obx(() {
                          return Wrap(
                            runSpacing: 45,
                            spacing: 45,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: ()=> controller.onChangeIndex(0),
                                child: Container(
                                  height: 56,
                                  width: 173,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: controller.selectedIndex.value == 0
                                        ? kPrimaryColor
                                        : kPrimaryColor.withOpacity(0.3),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "kPrivacyPolicy".tr(),
                                      style: AppStyles.whiteTextStyle()
                                          .copyWith(
                                        fontWeight: FontWeight.w600,
                                        color: kWhiteColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: ()=> controller.onChangeIndex(2),
                                child: Container(
                                  height: 56,
                                  width: 217,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: controller.selectedIndex.value == 2
                                        ? kPrimaryColor
                                        : kPrimaryColor.withOpacity(0.3),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "kTermsAndConditions".tr(),
                                      style: AppStyles.whiteTextStyle()
                                          .copyWith(
                                        fontWeight: FontWeight.w600,
                                        color: kWhiteColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        }),
                        const SizedBox(
                          height: 34,
                        ),
                        SizedBox(
                          height: 600,
                          child: Column(
                            children: [
                              QuillSimpleToolbar(
                                controller: controller.quillController,
                                configurations: const QuillSimpleToolbarConfigurations(
                                  color: kWhiteColor,
                                  showUndo: false,
                                  showUnderLineButton: true,
                                  showSuperscript: false,
                                  showSubscript: false,
                                  showStrikeThrough: false,
                                  showSearchButton: false,
                                  showRightAlignment: false,
                                  sectionDividerSpace: 10,
                                  toolbarSectionSpacing: 10,
                                  showBackgroundColorButton: false,
                                  showDirection: false,
                                  showClipboardCopy: false,
                                  showClipboardCut: false,
                                  showCenterAlignment: false,
                                  showJustifyAlignment: false,
                                  showLeftAlignment: true,
                                  showSmallButton: false,
                                  showRedo: false,
                                  showQuote: true,
                                  showListNumbers: true,
                                  showListBullets: true,
                                  multiRowsDisplay: false,
                                  showListCheck: false,
                                  showItalicButton: true,
                                  showAlignmentButtons: true,
                                  showBoldButton: true,
                                  showIndent: false,
                                  showHeaderStyle: false,
                                  showFontSize: false,
                                  showFontFamily: false,
                                  showDividers: false,
                                  showLink: false,
                                  showClipboardPaste: false,
                                  showColorButton: false,
                                  showCodeBlock: false,
                                  showClearFormat: false,
                                  showInlineCode: true,
                                  showLineHeightButton: false,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: kBorderColor3,
                                      width: 1,
                                    ),
                                  ),
                                  child: QuillEditor.basic(
                                    controller: controller.quillController,
                                    configurations: const QuillEditorConfigurations(
                                      padding: EdgeInsets.all(20),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 73,
                        ),
                        Obx(() {
                          if (controller.isEditing.value) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomButton(
                                  textColor: controller.enabledUpdate.value
                                      ? kWhiteColor
                                      : kDisableBtnTextColor,
                                  title: "kUpdateLarge".tr(),
                                  height: 40,
                                  width: 114,
                                  textSize: 14.sp,
                                  onTap: (){},
                                  color: controller.enabledUpdate.value
                                      ? kPrimaryColor
                                      : kDisableButtonColor,
                                  borderColor: controller.enabledUpdate.value
                                      ? kPrimaryColor
                                      : kDisableButtonColor,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                CustomButton(
                                  title: "kDiscardChanges".tr(),
                                  height: 40,
                                  width: 190,
                                  textSize: 14.sp,
                                  textColor: controller.enabledDiscardChange.value
                                      ? kWhiteColor
                                      : kDisableBtnTextColor,
                                  onTap: () {

                                    // controller.readOnlyQuillController
                                    //     .document = Document.fromDelta(
                                    //   Delta()
                                    //     ..insert(
                                    //         "${controller.selectedTermModel.text}\n"),
                                    // );
                                  },
                                  color: controller.enabledDiscardChange.value
                                      ? kPrimaryColor
                                      : kDisableButtonColor,
                                  borderColor: controller.enabledDiscardChange.value
                                      ? kPrimaryColor
                                      : kDisableButtonColor,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                CustomButton(
                                  textSize: 14.sp,
                                  textColor: kBlackColor,
                                  title: "kCancel".tr(),
                                  height: 40,
                                  width: 90,
                                  onTap: () {
                                    controller.toggleEditing();
                                  },
                                  color: kWhiteColor,
                                  borderColor: kBorderColor3,
                                ),
                              ],
                            );
                          }
                          return Center(
                            child: CustomButton(
                              title: "${"kEdit".tr()} ${controller.selectedIndex.value==0? "kPrivacyPolicy".tr(): controller.selectedIndex.value == 1? "Cookies Policy" : "kTermsAndConditions".tr()}",
                              height: 56,
                              onTap: () {
                                controller.toggleEditing();
                              },
                              width: 209,
                            ),
                          );
                        }),
                        const SizedBox(
                          height: 50,
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
    );
  }
}