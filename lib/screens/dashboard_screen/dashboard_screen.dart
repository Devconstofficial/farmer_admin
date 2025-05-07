import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_images.dart';
import '../../../utils/app_styles.dart';
import '../../custom_widgets/approve_dialoge.dart';
import '../../custom_widgets/custom_button.dart';
import '../../custom_widgets/dashboard_container.dart';
import '../../custom_widgets/detail_row.dart';
import '../sidemenu/sidemenu.dart';
import 'controller/dashboard_controller.dart';

class DashboardScreen extends GetView<DashboardController> {
  DashboardScreen({super.key});

  Widget detailsDialogue(BuildContext context) {
    return Dialog(
      backgroundColor: kWhiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: SizedBox(
        width: 693,
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Obx(() => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  height: 46,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: kGreyShade5Color,
                              width: 0.4
                          )
                      )
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: (){
                          controller.selectedTab.value = 'User Details';
                        },
                        child: Text(
                          "User Details",
                          style: AppStyles.blackTextStyle()
                              .copyWith(
                              fontSize: 14,
                              fontWeight: controller.selectedTab.value == "User Details" ? FontWeight.w700 : FontWeight.w400,
                              color: controller.selectedTab.value == "User Details" ? kBlackColor : kDarkBlueColor
                          ),
                        ),
                      ),
                      SizedBox(width: 27.w,),
                      GestureDetector(
                        onTap: (){
                          controller.selectedTab.value = 'License Details';

                        },
                        child: Text(
                          "License Details",
                          style: AppStyles.blackTextStyle()
                              .copyWith(
                              fontSize: 14,
                              fontWeight: controller.selectedTab.value == "License Details" ? FontWeight.w700 : FontWeight.w400,
                              color: controller.selectedTab.value == "License Details" ? kBlackColor : kDarkBlueColor
                          ),
                        ),
                      ),
                      SizedBox(width: 27.w,),
                      GestureDetector(
                        onTap: (){
                          controller.selectedTab.value = 'Car Details';

                        },
                        child: Text(
                          "Car Details",
                          style: AppStyles.blackTextStyle()
                              .copyWith(
                              fontSize: 14,
                              fontWeight: controller.selectedTab.value == "Car Details" ? FontWeight.w700 : FontWeight.w400,
                              color: controller.selectedTab.value == "Car Details" ? kBlackColor : kDarkBlueColor
                          ),
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
                  )
              ),
              if(controller.selectedTab.value == 'User Details')
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: Column(
                    spacing: 6,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DetailRowWidget(title: "Name", detail: "Yasir Nawaz"),
                      DetailRowWidget(title: "Email", detail: "Yasir Nawaz@gmail.com"),
                      DetailRowWidget(title: "Phone Number", detail: "Number"),
                      DetailRowWidget(title: "DOB | Gender", detail: "2024-02-10 | Male"),
                      DetailRowWidget(title: "ID Card Number | Expiry Date", detail: "54564113 | 28/12"),
                      DetailRowWidget(title: "Operating Card Number | Expiry Date", detail: "621546454 | 28/12"),
                      DetailRowWidget(title: "Vehicle", detail: "Car"),
                    ],
                  ),
                ),
              if(controller.selectedTab.value == 'License Details')
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DetailRowWidget(title: "License Issuing Country", detail: "UK"),
                      SizedBox(height: 6,),
                      DetailRowWidget(title: "Driver License Number", detail: "1231234"),
                      SizedBox(height: 6,),
                      DetailRowWidget(title: "License Issuing Date", detail: "2024-02-10"),
                      SizedBox(height: 6,),
                      Divider(
                        color: kBorderColor2,
                        thickness: 0.4,
                        height: 0.4,
                      ),
                      SizedBox(height: 6,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Driving License",style: AppStyles.blackTextStyle().copyWith(fontWeight: FontWeight.w400,fontSize: 16,color: kBlackTextColor),),
                              SizedBox(height: 6,),
                              SizedBox(
                                height: 174,
                                width: 274,
                                child: Image.asset(kIdCardImage,fit: BoxFit.cover,),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("ID Card / Passport",style: AppStyles.blackTextStyle().copyWith(fontWeight: FontWeight.w400,fontSize: 16,color: kBlackTextColor),),
                              SizedBox(height: 6,),
                              SizedBox(
                                height: 174,
                                width: 274,
                                child: Image.asset(kIdCardImage,fit: BoxFit.cover,),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              if(controller.selectedTab.value == 'Car Details')
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: Column(
                    spacing: 6,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DetailRowWidget(title: "VIN", detail: "515465445"),
                      DetailRowWidget(title: "Car Model Year", detail: "2024-02-10"),
                      DetailRowWidget(title: "Make", detail: "--"),
                      DetailRowWidget(title: "Model", detail: "--"),
                      DetailRowWidget(title: "Car Location", detail: "--"),
                      DetailRowWidget(title: "License Plate Number", detail: "--"),
                      DetailRowWidget(title: "Issued State", detail: "--"),
                      Divider(
                        color: kBorderColor2,
                        thickness: 0.4,
                        height: 0.4,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Car Registration",style: AppStyles.blackTextStyle().copyWith(fontWeight: FontWeight.w400,fontSize: 16,color: kBlackTextColor),),
                              SizedBox(height: 6,),
                              SizedBox(
                                height: 174,
                                width: 274,
                                child: Image.asset(kIdCardImage,fit: BoxFit.cover,),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              Container(
                height: 66,
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                            color: kGreyShade5Color,
                            width: 0.4
                        )
                    )
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(title: "Cancel", onTap: (){
                      Get.back();
                    },borderColor: kBorderColor2,color: kWhiteColor,height: 40,width: 79,textSize: 14,fontWeight: FontWeight.w600,textColor: kDarkBlueColor,),
                    CustomButton(title: "Decline Request", onTap: (){
                      Get.back();
                    },borderColor: kRedColor,color: kRedColor,height: 40,width: 151,textSize: 14,fontWeight: FontWeight.w600,),
                    CustomButton(title: "Approve Request", onTap: (){
                      Get.back();
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return approveDialogue(context);
                        },
                      );
                    },height: 40,width: 151,textSize: 14,fontWeight: FontWeight.w600,),
                  ],
                ),
              )
            ],
          ),),
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
                      decoration: BoxDecoration(
                        color: kWhiteColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 32),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Dashboard",
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
                          Wrap(
                            runSpacing: 28,
                            spacing: 28,
                            children: [
                              GestureDetector(
                                  onTap: () {

                                  },
                                  child: DashboardContainer(
                                    width: 202,
                                    height: 112,
                                    color: kPrimaryColor,
                                    percent: '+11.01%',
                                    title: "Total Users",
                                    totalNumber: '1200',
                                    icon: kDoubleUserIcon,
                                    showIcon: true,
                                  )),
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
                                  title: "Total Earnings",
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
                                  title: "Support Chats",
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
                                    title: "Total Orders",
                                    totalNumber: '1200',
                                    icon: kCartIcon,
                                    showIcon: true,
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 32.h,
                          ),
                          Row(
                            children: [
                              Text(
                                'Revenue',
                                style: AppStyles.blackTextStyle()
                                    .copyWith(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,),
                              ),
                              Spacer(),
                              Obx(() {
                                return Text(
                                  controller.selectedOption.value.isEmpty? "Last 7 Days" : "Last ${controller.selectedOption.value}",
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
                                      child: Obx(() => Row(
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
                            height: 9.h,
                          ),
                        ],
                      ),
                    )
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