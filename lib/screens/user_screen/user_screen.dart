import 'package:farmer_admin/custom_widgets/delete_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_images.dart';
import '../../../utils/app_styles.dart';
import '../../custom_widgets/approve_dialoge.dart';
import '../../custom_widgets/custom_button.dart';
import '../../custom_widgets/dashboard_container.dart';
import '../../custom_widgets/detail_row.dart';
import '../../custom_widgets/show_detail_dialog.dart';
import '../sidemenu/sidemenu.dart';
import 'controller/user_controller.dart';

class UserScreen extends GetView<UserController> {
  const UserScreen({super.key});

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
                          controller.showDetail.value = false;
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
                          controller.selectedTab.value = 'Orders';
                          controller.showDetail.value = false;
                        },
                        child: Text(
                          "Orders",
                          style: AppStyles.blackTextStyle()
                              .copyWith(
                              fontSize: 14,
                              fontWeight: controller.selectedTab.value == "Orders" ? FontWeight.w700 : FontWeight.w400,
                              color: controller.selectedTab.value == "Orders" ? kBlackColor : kDarkBlueColor
                          ),
                        ),
                      ),
                      SizedBox(width: 27.w,),
                      GestureDetector(
                        onTap: (){
                          controller.selectedTab.value = 'Application Feedback';
                          controller.showDetail.value = false;
                        },
                        child: Text(
                          "Application Feedback",
                          style: AppStyles.blackTextStyle()
                              .copyWith(
                              fontSize: 14,
                              fontWeight: controller.selectedTab.value == "Application Feedback" ? FontWeight.w700 : FontWeight.w400,
                              color: controller.selectedTab.value == "Application Feedback" ? kBlackColor : kDarkBlueColor
                          ),
                        ),
                      ),
                      SizedBox(width: 27.w,),
                      GestureDetector(
                        onTap: (){
                          controller.selectedTab.value = 'View Support Chat';
                          controller.showDetail.value = false;

                        },
                        child: Text(
                          "View Support Chat",
                          style: AppStyles.blackTextStyle()
                              .copyWith(
                              fontSize: 14,
                              fontWeight: controller.selectedTab.value == "View Support Chat" ? FontWeight.w700 : FontWeight.w400,
                              color: controller.selectedTab.value == "View Support Chat" ? kBlackColor : kDarkBlueColor
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
                      DetailRowWidget(title: "Phone  Number", detail: "+91712351276"),
                      DetailRowWidget(title: "Email", detail: "Maliele@gmail.com"),
                      DetailRowWidget(title: "Name", detail: "Yasir Nawaz"),
                      DetailRowWidget(title: "Registration Date", detail: "2024-02-10"),
                    ],
                  ),
                ),
              if(controller.selectedTab.value == 'Orders')
                Obx(() => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: Column(
                    spacing: 6,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if(controller.showDetail.value == false) ...[
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    border: Border.all(
                                        width: 1,
                                        color: kGreyShade8Color
                                    )
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Collection Point",style: AppStyles.blackTextStyle().copyWith(fontWeight: FontWeight.w400,fontSize: 13),),
                                                SizedBox(height: 3,),
                                                Text("London",style: AppStyles.greyTextStyle().copyWith(fontWeight: FontWeight.w400,fontSize: 13,color: kGreyShade9Color),),
                                                SizedBox(height: 9,),
                                                Text("Delivery Address",style: AppStyles.blackTextStyle().copyWith(fontWeight: FontWeight.w400,fontSize: 13),),
                                                SizedBox(height: 3,),
                                                Text("Sussex",style: AppStyles.greyTextStyle().copyWith(fontWeight: FontWeight.w400,fontSize: 13,color: kGreyShade9Color),),
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: 45,),
                                          Expanded(
                                            child: Column(
                                              children: [
                                                Container(
                                                  height: 42,
                                                  width: 42,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(100),
                                                  ),
                                                  child: ClipRRect(
                                                      borderRadius: BorderRadius.circular(100),
                                                      child: Image.asset(kAvatar2,fit: BoxFit.cover,)),
                                                ),
                                                SizedBox(height: 7,),
                                                Text("James Williams",style: AppStyles.blackTextStyle().copyWith(fontWeight: FontWeight.w700,fontSize: 12),),
                                                SizedBox(height: 3,),
                                                Row(
                                                  children: [
                                                    RatingBarIndicator(
                                                      rating: controller.rating.value,
                                                      itemBuilder: (context, index) => Icon(
                                                        Icons.star_rounded,
                                                        color: kAmberColor,
                                                      ),
                                                      itemCount: 1,
                                                      itemSize: 18,
                                                      unratedColor: Colors.grey[300],
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text(
                                                      "4.8",
                                                      style: AppStyles.blackTextStyle()
                                                          .copyWith(
                                                        fontSize: 11,
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text(
                                                      "(60 Reviews)",
                                                      style: AppStyles.greyTextStyle()
                                                          .copyWith(
                                                          fontSize: 10,
                                                          fontWeight: FontWeight.w500,
                                                          color: kGreyShade10Color
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 12,),
                                      CustomButton(title: "View Details", onTap: (){
                                        controller.showDetail.value = true;
                                      },color: kWhiteColor,borderColor: kPrimaryColor,textColor: kGreyShade9Color,textSize: 13,fontWeight: FontWeight.w400,height: 36,)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 45,),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    border: Border.all(
                                        width: 1,
                                        color: kGreyShade8Color
                                    )
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Collection Point",style: AppStyles.blackTextStyle().copyWith(fontWeight: FontWeight.w400,fontSize: 13),),
                                                SizedBox(height: 3,),
                                                Text("London",style: AppStyles.greyTextStyle().copyWith(fontWeight: FontWeight.w400,fontSize: 13,color: kGreyShade9Color),),
                                                SizedBox(height: 9,),
                                                Text("Delivery Address",style: AppStyles.blackTextStyle().copyWith(fontWeight: FontWeight.w400,fontSize: 13),),
                                                SizedBox(height: 3,),
                                                Text("Sussex",style: AppStyles.greyTextStyle().copyWith(fontWeight: FontWeight.w400,fontSize: 13,color: kGreyShade9Color),),
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: 45,),
                                          Expanded(
                                            child: Column(
                                              children: [
                                                Container(
                                                  height: 42,
                                                  width: 42,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(100),
                                                  ),
                                                  child: ClipRRect(
                                                      borderRadius: BorderRadius.circular(100),
                                                      child: Image.asset(kAvatar2,fit: BoxFit.cover,)),
                                                ),
                                                SizedBox(height: 7,),
                                                Text("James Williams",style: AppStyles.blackTextStyle().copyWith(fontWeight: FontWeight.w700,fontSize: 12),),
                                                SizedBox(height: 3,),
                                                Row(
                                                  children: [
                                                    RatingBarIndicator(
                                                      rating: controller.rating.value,
                                                      itemBuilder: (context, index) => Icon(
                                                        Icons.star_rounded,
                                                        color: kAmberColor,
                                                      ),
                                                      itemCount: 1,
                                                      itemSize: 18,
                                                      unratedColor: Colors.grey[300],
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text(
                                                      "4.8",
                                                      style: AppStyles.blackTextStyle()
                                                          .copyWith(
                                                        fontSize: 11,
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text(
                                                      "(60 Reviews)",
                                                      style: AppStyles.greyTextStyle()
                                                          .copyWith(
                                                          fontSize: 10,
                                                          fontWeight: FontWeight.w500,
                                                          color: kGreyShade10Color
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 12,),
                                      CustomButton(title: "View Details", onTap: (){
                                        controller.showDetail.value = true;
                                      },color: kWhiteColor,borderColor: kPrimaryColor,textColor: kGreyShade9Color,textSize: 13,fontWeight: FontWeight.w400,height: 36,)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                      if(controller.showDetail.value) ...[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: 186,
                              width: double.infinity,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: GoogleMap(
                                  initialCameraPosition: CameraPosition(
                                    target: LatLng(37.7749, -122.4194),
                                    zoom: 14,
                                  ),
                                  zoomControlsEnabled: false,
                                  myLocationButtonEnabled: false,
                                  onMapCreated: (GoogleMapController controller) {
                        
                                  },
                                ),
                              ),
                            ),
                            SizedBox(height: 16,),
                            DetailRowWidget(title: "Order ID", detail: "1712351276"),
                            SizedBox(height: 6,),
                            DetailRowWidget(title: "Order Status", detail: "Out for Delivery"),
                            SizedBox(height: 6,),
                            DetailRowWidget(title: "Payment Status", detail: "Paid"),
                            const SizedBox(
                              height: 20,
                            ),
                            Divider(
                              height: 0.4,
                              thickness: 0.4,
                              color: kGreyShade5Color,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Customer Detail:",
                                      style: AppStyles.blackTextStyle()
                                          .copyWith(fontSize: 16, fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(height: 8,),
                                    Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(100),
                                          child: Image.asset(kAvatar2,height: 50,width: 50,),
                                        ),
                                        SizedBox(
                                          width: 17,
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "James Williams",
                                              style: AppStyles.blackTextStyle()
                                                  .copyWith(fontSize: 12, fontWeight: FontWeight.w600),
                                            ),
                                            SizedBox(height: 4,),
                                            Row(
                                              children: [
                                                Image.asset(kStarIcon,height: 12,width: 12,),
                                                SizedBox(width: 6,),
                                                Text(
                                                  "4.8",
                                                  style: AppStyles.blackTextStyle()
                                                      .copyWith(fontSize: 10, fontWeight: FontWeight.w600),
                                                ),
                                                Text(
                                                  "(60 Reviews)",
                                                  style: AppStyles.greyTextStyle()
                                                      .copyWith(fontSize: 10, fontWeight: FontWeight.w600,color: kGreyShade5Color),
                                                ),
                                                SizedBox(width: 6,),
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(width: 121,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Customer Detail:",
                                      style: AppStyles.blackTextStyle()
                                          .copyWith(fontSize: 16, fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(height: 8,),
                                    Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(100),
                                          child: Image.asset(kAvatar2,height: 50,width: 50,),
                                        ),
                                        SizedBox(
                                          width: 17,
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "James Williams",
                                              style: AppStyles.blackTextStyle()
                                                  .copyWith(fontSize: 12, fontWeight: FontWeight.w600),
                                            ),
                                            SizedBox(height: 4,),
                                            Row(
                                              children: [
                                                Image.asset(kStarIcon,height: 12,width: 12,),
                                                SizedBox(width: 6,),
                                                Text(
                                                  "4.8",
                                                  style: AppStyles.blackTextStyle()
                                                      .copyWith(fontSize: 10, fontWeight: FontWeight.w600),
                                                ),
                                                Text(
                                                  "(60 Reviews)",
                                                  style: AppStyles.greyTextStyle()
                                                      .copyWith(fontSize: 10, fontWeight: FontWeight.w600,color: kGreyShade5Color),
                                                ),
                                                SizedBox(width: 6,),
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),

                          ],
                        )
                      ],
                    ],
                  ),
                ),),
              if(controller.selectedTab.value == 'Application Feedback')
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: Column(
                    spacing: 6,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DetailRowWidget(title: "Rating", detail: "4.5"),
                      DetailRowWidget(title: "Review", detail: "Lorem ipsum dolor sit amet, consetetur sadi sspscing elitr, sed diam \nnonumy"),
                    ],
                  ),
                ),
              if(controller.selectedTab.value == 'View Support Chat')
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: Column(
                    spacing: 6,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DetailRowWidget(title: "Rating", detail: "4.5"),
                      DetailRowWidget(title: "Review", detail: "Lorem ipsum dolor sit amet, consetetur sadi sspscing elitr, sed diam \nnonumy"),
                      const SizedBox(
                        height: 20,
                      ),
                      Divider(
                        height: 0.4,
                        thickness: 0.4,
                        color: kGreyShade5Color,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
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
                          alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 12),
                              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                              decoration: BoxDecoration(
                                color: isMe ? kPrimaryColor.withOpacity(0.1) : kWhiteColor2,
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
                                style: AppStyles.blackTextStyle().copyWith(fontSize: 16),
                              ),
                            ),
                          )
                          );
                        },),
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
                    if(controller.showDetail.value) ...[
                      CustomButton(
                        title: "Cancel",
                        height: 40,
                        onTap: () {
                          controller.showDetail.value = false;
                        },
                        width: 75,
                        textColor: kBlackColor,
                        color: kWhiteColor,
                        borderColor: kBorderColor,
                        textSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                      CustomButton(
                        title: "View Customer Feedback",
                        height: 40,
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return viewTextDialogue(context);
                            },
                          );
                        },
                        width: 212,
                        textSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                      CustomButton(
                        title: "Hide Details",
                        height: 40,
                        onTap: () {
                          controller.showDetail.value = false;
                        },
                        width: 114,
                        textSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                    if(controller.showDetail.value == false) ...[
                      CustomButton(title: "Cancel", onTap: (){
                        Get.back();
                      },borderColor: kBorderColor2,color: kWhiteColor,height: 40,width: 79,textSize: 14,fontWeight: FontWeight.w600,textColor: kDarkBlueColor,),
                      CustomButton(title: "De-activate User", onTap: (){
                        Get.back();

                      },height: 40,width: 151,textSize: 14,fontWeight: FontWeight.w600,),
                    ],
                  ],
                ),
              )
            ],
          ),),
        ),
      ),
    );
  }

  Widget viewTextDialogue(BuildContext context) {
    return Dialog(
      backgroundColor: kWhiteColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: SizedBox(
        width: 373,
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            spacing: 12,
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
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                      child: Image.asset(kAvatar2,height: 44,width: 44,)),
                  SizedBox(width: 13,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Haylie Aminoff",style: AppStyles.blackTextStyle().copyWith(fontWeight: FontWeight.w600,fontSize: 15),),
                      Text("32 minutes ago",style: AppStyles.greyTextStyle().copyWith(fontWeight: FontWeight.w400,fontSize: 10,color: kGreyShade9Color),)
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Text(
                        "4.8",
                        style: AppStyles.blackTextStyle()
                            .copyWith(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      RatingBarIndicator(
                        rating: controller.rating.value,
                        itemBuilder: (context, index) => Icon(
                          Icons.star_rounded,
                          color: kAmberColor,
                        ),
                        itemCount: 5,
                        itemSize: 18,
                        unratedColor: Colors.grey[300],
                      ),
                    ],
                  )
                ],
              ),
              Text("Lorem ipsum dolor sit amet, consetetur sadi sspscing elitr, sed diam nonumy",style: AppStyles.blackTextStyle().copyWith(fontWeight: FontWeight.w400,fontSize: 12),),
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
                      decoration: BoxDecoration(
                        color: kWhiteColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 32),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Users",
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
                                    title: "Total Customer",
                                    totalNumber: '1200',
                                    icon: kDoubleUserIcon,
                                  )),
                              GestureDetector(
                                onTap: () {

                                },
                                child: DashboardContainer(
                                  width: 202,
                                  height: 112,
                                  color: kDarkPrimaryColor,
                                  title: "Total Suppliers",
                                  totalNumber: '1200',
                                  icon: kCashIcon,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 32.h,
                          ),
                          Container(
                            height: 70,
                            width: 314,
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
                                    controller.selectedOption.value.isEmpty? "User Type" : controller.selectedOption.value,
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
                                            "User ID",
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
                                            "User Type",
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
                                            "Total Orders",
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
                                        headingRowAlignment: MainAxisAlignment.center,
                                      ),
                                      DataColumn(
                                        headingRowAlignment: MainAxisAlignment.center,
                                        label: Flexible(
                                          child: Text(
                                            "Status",
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
                                        user['id']!,
                                        user['name']!,
                                        user['type']!,
                                        user['orders']!,
                                        user['status']!,
                                        user['statusBackColor'],
                                        user['StatusColor'],
                                        context))
                                        .toList(),
                                    dataRowMaxHeight: 65,
                                  ),
                                ),
                              ],
                            ),
                          ),),
                          SizedBox(
                            height: 51.h,
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

  DataRow _buildDataRow(String id, String name, String type, String email, String status,
      Color statusColor, Color statusBackColor, context) {
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
        DataCell(Center(
          child: Text(
            email,
            textAlign: TextAlign.center,
            style: AppStyles.blackTextStyle()
                .copyWith(fontSize: 14.sp, fontWeight: FontWeight.w600),
          ),
        )),
        DataCell(
          Center(
            child: Container(
              width: 93.w,
              height: 27,
              decoration: BoxDecoration(
                color: statusBackColor,
                borderRadius: BorderRadius.circular(5.r),
              ),
              child: Center(
                child: Text(
                  status,
                  style: AppStyles.blackTextStyle().copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: statusColor),
                ),
              ),
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