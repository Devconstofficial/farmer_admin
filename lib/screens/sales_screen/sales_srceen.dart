import 'package:farmer_admin/custom_widgets/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_images.dart';
import '../../../utils/app_styles.dart';
import '../../custom_widgets/custom_button.dart';
import '../../custom_widgets/dashboard_container.dart';
import '../../custom_widgets/delete_dialog.dart';
import '../../custom_widgets/detail_row.dart';
import '../../custom_widgets/revenue_chat.dart';
import '../sidemenu/sidemenu.dart';
import 'controller/sales_controller.dart';

class SalesScreen extends GetView<SalesController> {
  const SalesScreen({super.key});

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
                      "Detail Overview",
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DetailRowWidget(title: "Decision ID", detail: "DEC-2023"),
                    DetailRowWidget(title: "Employee Name", detail: "David Miller"),
                    DetailRowWidget(title: "Collection Point", detail: "Downtown Hub"),
                    DetailRowWidget(title: "Decision Type", detail: "Discount Approval"),
                    DetailRowWidget(title: "Decision Date & Time", detail: "March 6, 2025 - 10:45 AM"),
                    DetailRowWidget(title: "Status", detail: "✅ Approved"),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Divider(
                        color: kGreyShade5Color,
                        height: 0.4,
                        thickness: 0.4,
                        endIndent: 0,
                      ),
                    ),
                    Text(
                      "Reason Provided by Employee:",
                      style: AppStyles.blackTextStyle()
                          .copyWith(fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "The customer is a frequent buyer who requested a discount on a large order. To maintain a good relationship and increase sales volume, I approved a 10% discount for orders above \$500.",
                      style: AppStyles.blackTextStyle()
                          .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
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
                child: Obx(() => Column(
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
                              "Sales",
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
                                  "Admin",
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
                          Row(
                            children: [
                              GestureDetector(
                                  onTap: () {

                                  },
                                  child: DashboardContainer(
                                    width: 216,
                                    height: 112,
                                    color: kPrimaryColor,
                                    title: "Total Sales",
                                    totalNumber: '\$ 12,491',
                                    icon: kDoubleUserIcon,
                                    showArrow: true,
                                    totalPer: "+11.01%",
                                  )),
                              SizedBox(width: 28,),
                              GestureDetector(
                                onTap: () {

                                },
                                child: DashboardContainer(
                                  width: 216,
                                  height: 112,
                                  color: kDarkPrimaryColor,
                                  title: "Total Orders",
                                  totalNumber: '121',
                                  icon: kCashIcon,
                                ),
                              ),
                              Spacer(),
                              CustomButton(title: "Generate Report", onTap: (){},width: 198.w,textSize: 16.sp,fontWeight: FontWeight.w600,)
                            ],
                          ),
                          SizedBox(
                            height: 32.h,
                          ),
                          Container(
                            height: 70,
                            width: 380,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: kWhiteColor,
                              border: Border.all(color: kGreyShade3Color,width: 0.6),),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                              children: [
                                SvgPicture.asset(
                                  kFilterIcon,
                                  height: 23,
                                  width: 20,
                                ),
                                Container(
                                  width: 0.3,
                                  color: kGreyShade5Color,
                                ),
                                Text(
                                  "Filter By",
                                  style: AppStyles.blackTextStyle()
                                      .copyWith(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,),
                                ),
                                Container(
                                  width: 0.3,
                                  color: kGreyShade5Color,
                                ),
                                Obx(() {
                                  return Text(
                                    controller.selectedOption.value.isEmpty? "Collection Point" : controller.selectedOption.value,
                                    style: AppStyles.blackTextStyle().copyWith(
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
                                  onSelected: (value) {

                                  },
                                  itemBuilder: (BuildContext context) {
                                    return controller.options.map((option) {
                                      return PopupMenuItem<String>(
                                        value: option,
                                        child: Obx(() => InkWell(
                                          onTap: () {
                                            controller.selectOption(option);
                                            Navigator.pop(context);
                                          },
                                          child: Row(
                                            children: [
                                              Checkbox(
                                                value: controller.selectedOption.value == option,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(4),
                                                ),
                                                side: BorderSide(color: kBorderColor,width: 1),
                                                onChanged: (bool? newValue) {
                                                  controller.selectOption(option);
                                                  Navigator.pop(context);
                                                },
                                                activeColor: kGreyShade1Color,
                                              ),
                                              SizedBox(width: 8),
                                              Text(option),
                                            ],
                                          ),
                                        )),
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
                          ),
                          SizedBox(
                            height: 32.h,
                          ),
                          const TotalRevenueChart(),
                          SizedBox(
                            height: 32.h,
                          ),
                          Text("Top Products", style: AppStyles.blackTextStyle().copyWith(
                              fontSize: 20, fontWeight: FontWeight.w600)),
                          SizedBox(
                            height: 16.h,
                          ),
                          Wrap(
                            spacing: 15,
                            runSpacing: 15,
                            children: controller.products.map((product) {
                              return ProductWidget(productImage: product['image']!, name: product['name']!, price: product['price']!, stockValue: product['stock']!);
                            }).toList(),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: [
                              Obx(() {
                                return Text(
                                  controller.selectedEmployee.value,
                                  style: AppStyles.blackTextStyle().copyWith(
                                    fontSize: 20.sp,
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
                                onSelected: (value) {

                                },
                                itemBuilder: (BuildContext context) {
                                  return controller.employee.map((option) {
                                    return PopupMenuItem<String>(
                                      value: option,
                                      child: Obx(() => InkWell(
                                        onTap: (){
                                          controller.selectEmployeeOption(option);
                                          Navigator.pop(context);
                                        },
                                        child: Row(
                                          children: [
                                            Checkbox(
                                              value: controller.selectedEmployee.value == option,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(4),
                                              ),
                                              side: BorderSide(color: kBorderColor,width: 1),
                                              onChanged: (bool? newValue) {
                                                controller.selectEmployeeOption(option);
                                                Navigator.pop(context);
                                              },
                                              activeColor: kGreyShade1Color,
                                            ),
                                            SizedBox(width: 8),
                                            Text(option),
                                          ],
                                        ),
                                      )),
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
                          SizedBox(
                            height: 16,
                          ),
                          if(controller.selectedEmployee.value == "Employee Performance") ...[
                            Obx(() => Container(
                              width: width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(14.r),
                                  topRight: Radius.circular(14.r),
                                ),
                                border: Border.all(
                                    color: kGreyColor, width: 0.3),
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
                                              "Employee Name",
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              style:
                                              AppStyles.whiteTextStyle()
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
                                              "Orders Processed",
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              style:
                                              AppStyles.whiteTextStyle()
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
                                              "Sales Generated (\$)",
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              style:
                                              AppStyles.whiteTextStyle()
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
                                              "Avg. Response Time (mins)",
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              style:
                                              AppStyles.whiteTextStyle()
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
                                              "Actions",
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              style:
                                              AppStyles.whiteTextStyle()
                                                  .copyWith(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 14.sp,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                      rows: controller.currentPageUsers
                                          .map((user) => _buildDataRow(
                                          user['name']!,
                                          user['orders']!,
                                          user['sales']!,
                                          user['avgResponse']!,
                                          context))
                                          .toList(),
                                      dataRowMaxHeight: 65,
                                    ),
                                  ),
                                ],
                              ),
                            ),),
                            SizedBox(
                              height: 24.h,
                            ),
                            Obx(() => Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: controller.isBackButtonDisabled
                                      ? null
                                      : controller.goToPreviousPage,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 12),
                                    decoration: BoxDecoration(
                                      color: controller.isBackButtonDisabled
                                          ? kCreamColor2
                                          : kPrimaryColor,
                                      border: Border.all(
                                        color: controller.isBackButtonDisabled
                                            ? kCreamColor2
                                            : kPrimaryColor,
                                      ),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: [
                                        Icon(Icons.arrow_back_ios_new_outlined,
                                            size: 12,
                                            color:
                                            controller.isBackButtonDisabled
                                                ? kBlackColor
                                                : kWhiteColor),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          'Back',
                                          style: AppStyles.blackTextStyle()
                                              .copyWith(
                                            fontSize: 12,
                                            color:
                                            controller.isBackButtonDisabled
                                                ? kBlackColor
                                                : kWhiteColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                ...List.generate(
                                  controller.totalPages,
                                      (index) {
                                    bool isSelected = index + 1 ==
                                        controller.currentPage.value;
                                    return GestureDetector(
                                      onTap: () =>
                                          controller.changePage(index + 1),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 6),
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 8, horizontal: 12),
                                          decoration: BoxDecoration(
                                            color: isSelected
                                                ? kPrimaryColor
                                                : kCreamColor2,
                                            borderRadius:
                                            BorderRadius.circular(4),
                                            border: Border.all(
                                              color: isSelected
                                                  ? kPrimaryColor
                                                  : kCreamColor,
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              (index + 1).toString(),
                                              style: AppStyles.blackTextStyle()
                                                  .copyWith(
                                                fontSize: 12,
                                                color: isSelected
                                                    ? kWhiteColor
                                                    : kBlackColor,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                // const SizedBox(width: 12,),
                                GestureDetector(
                                  onTap: controller.isNextButtonDisabled
                                      ? null
                                      : controller.goToNextPage,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 12),
                                    decoration: BoxDecoration(
                                      color: controller.isNextButtonDisabled
                                          ? kCreamColor2
                                          : kPrimaryColor,
                                      border: Border.all(
                                          color: controller.isNextButtonDisabled ? kCreamColor2 : kPrimaryColor
                                      ),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Next',
                                          style: AppStyles.blackTextStyle()
                                              .copyWith(
                                            fontSize: 12,
                                            color:
                                            controller.isNextButtonDisabled
                                                ? kBlackColor
                                                : kWhiteColor,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        Icon(Icons.arrow_forward_ios_outlined,
                                            size: 12,
                                            color:
                                            controller.isNextButtonDisabled
                                                ? kBlackColor
                                                : kWhiteColor),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),)
                          ],
                          if(controller.selectedEmployee.value == "Decisions Tracking") ...[
                            Obx(() => Container(
                              width: width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(14.r),
                                  topRight: Radius.circular(14.r),
                                ),
                                border: Border.all(
                                    color: kGreyColor, width: 0.3),
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
                                              "Decision ID",
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              style:
                                              AppStyles.whiteTextStyle()
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
                                              "Name",
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              style:
                                              AppStyles.whiteTextStyle()
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
                                              "Decision Type",
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              style:
                                              AppStyles.whiteTextStyle()
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
                                              "Collection Point",
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              style:
                                              AppStyles.whiteTextStyle()
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
                                              "Reason Provided",
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              style:
                                              AppStyles.whiteTextStyle()
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
                                              "Action",
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              style:
                                              AppStyles.whiteTextStyle()
                                                  .copyWith(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 14.sp,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                      rows: controller.currentPageDecisions
                                          .map((user) => _buildDataRow1(
                                          user['id']!,
                                          user['name']!,
                                          user['type']!,
                                          user['collPoint']!,
                                          user['reason'],
                                          context))
                                          .toList(),
                                      dataRowMaxHeight: 65,
                                    ),
                                  ),
                                ],
                              ),
                            ),),
                            SizedBox(
                              height: 24.h,
                            ),
                            Obx(() => Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: controller.isBackButtonDisabled1
                                      ? null
                                      : controller.goToPreviousPage1,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 12),
                                    decoration: BoxDecoration(
                                      color: controller.isBackButtonDisabled1
                                          ? kCreamColor2
                                          : kPrimaryColor,
                                      border: Border.all(
                                        color: controller.isBackButtonDisabled1
                                            ? kCreamColor2
                                            : kPrimaryColor,
                                      ),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: [
                                        Icon(Icons.arrow_back_ios_new_outlined,
                                            size: 12,
                                            color:
                                            controller.isBackButtonDisabled1
                                                ? kBlackColor
                                                : kWhiteColor),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          'Back',
                                          style: AppStyles.blackTextStyle()
                                              .copyWith(
                                            fontSize: 12,
                                            color:
                                            controller.isBackButtonDisabled1
                                                ? kBlackColor
                                                : kWhiteColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                ...List.generate(
                                  controller.totalPages1,
                                      (index) {
                                    bool isSelected = index + 1 ==
                                        controller.currentPage1.value;
                                    return GestureDetector(
                                      onTap: () =>
                                          controller.changePage1(index + 1),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 6),
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 8, horizontal: 12),
                                          decoration: BoxDecoration(
                                            color: isSelected
                                                ? kPrimaryColor
                                                : kCreamColor2,
                                            borderRadius:
                                            BorderRadius.circular(4),
                                            border: Border.all(
                                              color: isSelected
                                                  ? kPrimaryColor
                                                  : kCreamColor,
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              (index + 1).toString(),
                                              style: AppStyles.blackTextStyle()
                                                  .copyWith(
                                                fontSize: 12,
                                                color: isSelected
                                                    ? kWhiteColor
                                                    : kBlackColor,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                // const SizedBox(width: 12,),
                                GestureDetector(
                                  onTap: controller.isNextButtonDisabled1
                                      ? null
                                      : controller.goToNextPage1,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 12),
                                    decoration: BoxDecoration(
                                      color: controller.isNextButtonDisabled1
                                          ? kCreamColor2
                                          : kPrimaryColor,
                                      border: Border.all(
                                          color: controller.isNextButtonDisabled1 ? kCreamColor2 : kPrimaryColor
                                      ),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Next',
                                          style: AppStyles.blackTextStyle()
                                              .copyWith(
                                            fontSize: 12,
                                            color:
                                            controller.isNextButtonDisabled1
                                                ? kBlackColor
                                                : kWhiteColor,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        Icon(Icons.arrow_forward_ios_outlined,
                                            size: 12,
                                            color:
                                            controller.isNextButtonDisabled1
                                                ? kBlackColor
                                                : kWhiteColor),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),)
                          ]
                        ],
                      ),
                    )
                  ],
                ),),
              ),
            ),
          ],
        ),
      ),
    );
  }

  DataRow _buildDataRow(String name, String orderProcessed, String sales, String avgResponse,
      context) {

    return DataRow(
      cells: [
        DataCell(Text(
          name,
          textAlign: TextAlign.center,
          style: AppStyles.blackTextStyle()
              .copyWith(fontSize: 14.sp, fontWeight: FontWeight.w600),
        )),
        DataCell(Text(
          orderProcessed,
          textAlign: TextAlign.center,
          style: AppStyles.blackTextStyle()
              .copyWith(fontSize: 14.sp, fontWeight: FontWeight.w600),
        )),
        DataCell(Text(
          sales,
          textAlign: TextAlign.center,
          style: AppStyles.blackTextStyle()
              .copyWith(fontSize: 14.sp, fontWeight: FontWeight.w600),
        )),
        DataCell(Text(
          avgResponse,
          textAlign: TextAlign.center,
          style: AppStyles.blackTextStyle()
              .copyWith(fontSize: 14.sp, fontWeight: FontWeight.w600),
        )),
        DataCell(
          Center(
            child: Container(
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: kCreamColor,
                  border: Border.all(color: kGreyShade5Color, width: 0.4)),
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
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  DataRow _buildDataRow1(String id, String name, String type, String collPoint, String reason,
      context) {

    return DataRow(
      cells: [
        DataCell(Text(
          id,
          textAlign: TextAlign.center,
          style: AppStyles.blackTextStyle()
              .copyWith(fontSize: 14.sp, fontWeight: FontWeight.w600),
        )),
        DataCell(Text(
          name,
          textAlign: TextAlign.center,
          style: AppStyles.blackTextStyle()
              .copyWith(fontSize: 14.sp, fontWeight: FontWeight.w600),
        )),
        DataCell(Text(
          type,
          textAlign: TextAlign.center,
          style: AppStyles.blackTextStyle()
              .copyWith(fontSize: 14.sp, fontWeight: FontWeight.w600),
        )),
        DataCell(Text(
          collPoint,
          textAlign: TextAlign.center,
          style: AppStyles.blackTextStyle()
              .copyWith(fontSize: 14.sp, fontWeight: FontWeight.w600),
        )),
        DataCell(SizedBox(
          width: 200.w,
          child: Text(
            reason,
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppStyles.blackTextStyle()
                .copyWith(fontSize: 14.sp, fontWeight: FontWeight.w600),
          ),
        )),
        DataCell(
          Center(
            child: Container(
              height: 32,
              width: 96.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: kCreamColor,
                  border: Border.all(color: kGreyShade5Color, width: 0.4)),
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
                    Container(
                      width: 0.4,
                      color: kGreyShade5Color,
                    ),
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