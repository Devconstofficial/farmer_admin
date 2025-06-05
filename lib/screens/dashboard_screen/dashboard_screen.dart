import 'package:easy_localization/easy_localization.dart';
import 'package:farmer_admin/custom_widgets/custom_textfield.dart';
import 'package:farmer_admin/utils/app_strings.dart';
import 'package:flutter/material.dart';
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
import '../../custom_widgets/dashboard_container.dart';
import '../../custom_widgets/detail_row.dart';
import '../sidemenu/sidemenu.dart';
import 'controller/dashboard_controller.dart';
import 'package:fl_chart/fl_chart.dart' as fl;

class DashboardScreen extends GetView<DashboardController> {
  const DashboardScreen({super.key});

  Widget viewTextDialogue(BuildContext context) {
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
                        "kSupplierFee".tr(),
                        style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      CustomTextField(hintText: "60", height: 40),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "kGovernmentFee".tr(),
                        style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      CustomTextField(hintText: "60", height: 40),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "kDeliveryFeeMin".tr(),
                        style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      CustomTextField(hintText: "60", height: 40),
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
                    title: "kAddNew".tr(),
                    onTap: () {
                      Get.back();
                    },
                    height: 40,
                    width: 92,
                    textSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  CustomButton(
                    title: "kUpdate".tr(),
                    onTap: () {
                      Get.back();
                    },
                    height: 40,
                    width: 81,
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
                              "kDashboard".tr(),
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
                          Wrap(
                            runSpacing: 28,
                            spacing: 28,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: DashboardContainer(
                                  width: 202,
                                  height: 112,
                                  color: kPrimaryColor,
                                  percent: '+11.01%',
                                  title: "kTotalUsers".tr(),
                                  totalNumber: '1200',
                                  icon: kDoubleUserIcon,
                                  showIcon: true,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  // Get.toNamed(kAnalyticsScreenRoute);
                                  // menuController.onItemTapped(6);
                                },
                                child: DashboardContainer(
                                  width: 202,
                                  height: 112,
                                  color: kDarkPrimaryColor,
                                  percent: '-0.03%',
                                  title: "kTotalEarnings".tr(),
                                  totalNumber: '\$120',
                                  icon: kCashIcon,
                                  showIcon: true,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  // Get.toNamed(kAnalyticsScreenRoute);
                                  // menuController.onItemTapped(6);
                                },
                                child: DashboardContainer(
                                  width: 202,
                                  height: 112,
                                  color: kPrimaryColor2,
                                  title: "kSupportChats".tr(),
                                  totalNumber: '\$20',
                                  icon: kSupportIcon,
                                  showIcon: true,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  // Get.toNamed(kAnalyticsScreenRoute);
                                  // menuController.onItemTapped(6);
                                },
                                child: DashboardContainer(
                                  width: 202,
                                  height: 112,
                                  color: kMiddlePrimaryColor,
                                  percent: '+15.03',
                                  title: "kTotalOrders".tr(),
                                  totalNumber: '1200',
                                  icon: kCartIcon,
                                  showIcon: true,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 32.h),
                          Container(
                            decoration: BoxDecoration(
                              color: kWhiteColor,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 31.0,
                                horizontal: 11,
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "kRevenue".tr(),
                                        style: AppStyles.blackTextStyle()
                                            .copyWith(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                      Spacer(),
                                      Obx(() {
                                        return Text(
                                          controller
                                                  .selectedOption
                                                  .value
                                                  .isEmpty
                                              ? "kLast7Days".tr()
                                              : "${"kLast".tr()} ${controller.selectedOption.value}",
                                          style: AppStyles.blackTextStyle()
                                              .copyWith(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w600,
                                              ),
                                          overflow: TextOverflow.ellipsis,
                                        );
                                      }),
                                      PopupMenuButton<String>(
                                        color: kWhiteColor,
                                        borderRadius: BorderRadius.circular(12),
                                        padding: EdgeInsets.all(0),
                                        position: PopupMenuPosition.under,
                                        onSelected: (value) {},
                                        itemBuilder: (BuildContext context) {
                                          return controller.options.map((
                                            option,
                                          ) {
                                            return PopupMenuItem<String>(
                                              value: option,
                                              child: Obx(
                                                () => InkWell(
                                                  onTap: () {
                                                    controller.selectOption(
                                                      option,
                                                    );
                                                    Navigator.pop(context);
                                                  },
                                                  child: Row(
                                                    children: [
                                                      Checkbox(
                                                        value:
                                                            controller
                                                                .selectedOption
                                                                .value ==
                                                            option,
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                4,
                                                              ),
                                                        ),
                                                        side: BorderSide(
                                                          color: kBorderColor,
                                                          width: 1,
                                                        ),
                                                        onChanged: (
                                                          bool? newValue,
                                                        ) {
                                                          controller
                                                              .selectOption(
                                                                option,
                                                              );
                                                          Navigator.pop(
                                                            context,
                                                          );
                                                        },
                                                        activeColor:
                                                            kGreyShade1Color,
                                                      ),
                                                      SizedBox(width: 8),
                                                      Text(option),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                          }).toList();
                                        },
                                        icon: const Icon(
                                          Icons.keyboard_arrow_down_outlined,
                                          size: 24,
                                          color: kGreyShade1Color,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 29.h),
                                  Row(
                                    children: [
                                      RotatedBox(
                                        quarterTurns: 3,
                                        child: Text(
                                          "kRevenueAmount".tr(),
                                          style: AppStyles.greyTextStyle()
                                              .copyWith(
                                                fontSize: 15,
                                                color: kGreyShade5Color,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                      SizedBox(width: 20),
                                      Expanded(
                                        child: SizedBox(
                                          height: 273,
                                          child: fl.BarChart(
                                            fl.BarChartData(
                                              alignment:
                                                  fl
                                                      .BarChartAlignment
                                                      .spaceBetween,
                                              maxY: 160,
                                              gridData: const fl.FlGridData(
                                                show: true,
                                                horizontalInterval: 40,
                                                drawHorizontalLine: false,
                                                drawVerticalLine: false,
                                              ),
                                              titlesData: fl.FlTitlesData(
                                                leftTitles: fl.AxisTitles(
                                                  sideTitles: fl.SideTitles(
                                                    showTitles: true,
                                                    reservedSize: 40,
                                                    interval: 40,
                                                    getTitlesWidget: (
                                                      value,
                                                      meta,
                                                    ) {
                                                      if (value % 40 == 0) {
                                                        return Text(
                                                          value
                                                              .toInt()
                                                              .toString(),
                                                          style: TextStyle(
                                                            color:
                                                                kLightBlueColor,
                                                            fontSize: 12,
                                                          ),
                                                        );
                                                      }
                                                      return Container();
                                                    },
                                                  ),
                                                ),
                                                bottomTitles: fl.AxisTitles(
                                                  sideTitles: fl.SideTitles(
                                                    showTitles: true,
                                                    getTitlesWidget: (
                                                      value,
                                                      meta,
                                                    ) {
                                                      TextStyle style =
                                                          AppStyles.greyTextStyle()
                                                              .copyWith(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                fontSize: 11,
                                                                color:
                                                                    kLightBlueColor,
                                                              );
                                                      Widget label;
                                                      switch (value.toInt()) {
                                                        case 0:
                                                          label = Text(
                                                            'Sep 10',
                                                            style: style,
                                                          );
                                                          break;
                                                        case 1:
                                                          label = Text(
                                                            'Sep 11',
                                                            style: style,
                                                          );
                                                          break;
                                                        case 2:
                                                          label = Text(
                                                            'Sep 12',
                                                            style: style,
                                                          );
                                                          break;
                                                        case 3:
                                                          label = Text(
                                                            'Sep 13',
                                                            style: style,
                                                          );
                                                          break;
                                                        case 4:
                                                          label = Text(
                                                            'Sep 14',
                                                            style: style,
                                                          );
                                                          break;
                                                        case 5:
                                                          label = Text(
                                                            'Sep 15',
                                                            style: style,
                                                          );
                                                          break;
                                                        case 6:
                                                          label = Text(
                                                            'Sep 16',
                                                            style: style,
                                                          );
                                                          break;
                                                        default:
                                                          label = const Text(
                                                            '',
                                                          );
                                                          break;
                                                      }
                                                      return Padding(
                                                        padding:
                                                            const EdgeInsets.only(
                                                              top: 9.0,
                                                            ),
                                                        child: label,
                                                      );
                                                    },
                                                  ),
                                                ),
                                                rightTitles:
                                                    const fl.AxisTitles(
                                                      sideTitles: fl.SideTitles(
                                                        showTitles: false,
                                                      ),
                                                    ),
                                                topTitles: const fl.AxisTitles(
                                                  sideTitles: fl.SideTitles(
                                                    showTitles: false,
                                                  ),
                                                ),
                                              ),
                                              borderData: fl.FlBorderData(
                                                show: false,
                                              ),
                                              barGroups:
                                                  controller.barChartData,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 270.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomButton(
                                title: "kViewTaxAndFee".tr(),
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return viewTextDialogue(context);
                                    },
                                  );
                                },
                                width: 200,
                                height: 56,
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
          ],
        ),
      ),
    );
  }
}
