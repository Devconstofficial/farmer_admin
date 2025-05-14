import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_images.dart';
import '../../../utils/app_styles.dart';
import '../../custom_widgets/approve_dialoge.dart';
import '../../custom_widgets/custom_button.dart';
import '../../custom_widgets/dashboard_container.dart';
import '../../custom_widgets/delete_dialog.dart';
import '../../custom_widgets/detail_row.dart';
import '../../custom_widgets/product_widget.dart';
import '../../custom_widgets/show_detail_dialog.dart';
import '../sidemenu/sidemenu.dart';
import 'controller/support_controller.dart';

class SupportScreen extends GetView<SupportController> {
  const SupportScreen({super.key});

  Widget detailsDialogue(BuildContext context) {
    return Dialog(
      backgroundColor: kWhiteColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: SizedBox(
        width: 693,
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Obx(
            () => Column(
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
                      SizedBox(
                        width: 620,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  controller.selectedTab.value = 'User Details';
                                },
                                child: Text(
                                  "User Details",
                                  style: AppStyles.blackTextStyle().copyWith(
                                    fontSize: 14,
                                    fontWeight:
                                        controller.selectedTab.value ==
                                                "User Details"
                                            ? FontWeight.w700
                                            : FontWeight.w400,
                                    color:
                                        controller.selectedTab.value ==
                                                "User Details"
                                            ? kBlackColor
                                            : kDarkBlueColor,
                                  ),
                                ),
                              ),
                              SizedBox(width: 20.w),
                              GestureDetector(
                                onTap: () {
                                  controller.selectedTab.value = 'Products';
                                },
                                child: Text(
                                  "Products",
                                  style: AppStyles.blackTextStyle().copyWith(
                                    fontSize: 14,
                                    fontWeight:
                                        controller.selectedTab.value ==
                                                "Products"
                                            ? FontWeight.w700
                                            : FontWeight.w400,
                                    color:
                                        controller.selectedTab.value ==
                                                "Products"
                                            ? kBlackColor
                                            : kDarkBlueColor,
                                  ),
                                ),
                              ),
                              SizedBox(width: 20.w),
                              GestureDetector(
                                onTap: () {
                                  controller.selectedTab.value = 'Requests';
                                },
                                child: Text(
                                  "Requests",
                                  style: AppStyles.blackTextStyle().copyWith(
                                    fontSize: 14,
                                    fontWeight:
                                        controller.selectedTab.value ==
                                                "Requests"
                                            ? FontWeight.w700
                                            : FontWeight.w400,
                                    color:
                                        controller.selectedTab.value ==
                                                "Requests"
                                            ? kBlackColor
                                            : kDarkBlueColor,
                                  ),
                                ),
                              ),
                              SizedBox(width: 20.w),
                              GestureDetector(
                                onTap: () {
                                  controller.selectedTab.value =
                                      'View Support Chat';
                                },
                                child: Text(
                                  "View Support Chat",
                                  style: AppStyles.blackTextStyle().copyWith(
                                    fontSize: 14,
                                    fontWeight:
                                        controller.selectedTab.value ==
                                                "View Support Chat"
                                            ? FontWeight.w700
                                            : FontWeight.w400,
                                    color:
                                        controller.selectedTab.value ==
                                                "View Support Chat"
                                            ? kBlackColor
                                            : kDarkBlueColor,
                                  ),
                                ),
                              ),
                              SizedBox(width: 20.w),
                              GestureDetector(
                                onTap: () {
                                  controller.selectedTab.value =
                                      'Ratings given';
                                },
                                child: Text(
                                  "Ratings given",
                                  style: AppStyles.blackTextStyle().copyWith(
                                    fontSize: 14,
                                    fontWeight:
                                        controller.selectedTab.value ==
                                                "Ratings given"
                                            ? FontWeight.w700
                                            : FontWeight.w400,
                                    color:
                                        controller.selectedTab.value ==
                                                "Ratings given"
                                            ? kBlackColor
                                            : kDarkBlueColor,
                                  ),
                                ),
                              ),
                              SizedBox(width: 20.w),
                              GestureDetector(
                                onTap: () {
                                  controller.selectedTab.value =
                                      'Ratings Received';
                                },
                                child: Text(
                                  "Ratings Received",
                                  style: AppStyles.blackTextStyle().copyWith(
                                    fontSize: 14,
                                    fontWeight:
                                        controller.selectedTab.value ==
                                                "Ratings Received"
                                            ? FontWeight.w700
                                            : FontWeight.w400,
                                    color:
                                        controller.selectedTab.value ==
                                                "Ratings Received"
                                            ? kBlackColor
                                            : kDarkBlueColor,
                                  ),
                                ),
                              ),
                              SizedBox(width: 20.w),
                            ],
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
                  ),
                ),
                if (controller.selectedTab.value == 'User Details')
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    child: Column(
                      spacing: 6,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DetailRowWidget(
                          title: "Phone  Number",
                          detail: "+91712351276",
                        ),
                        DetailRowWidget(
                          title: "Email",
                          detail: "Maliele@gmail.com",
                        ),
                        DetailRowWidget(title: "Name", detail: "Yasir Nawaz"),
                        DetailRowWidget(
                          title: "Registration Date",
                          detail: "2024-02-10",
                        ),
                        DetailRowWidget(
                          title: "Collection Points",
                          detail: "CP A and CP B",
                        ),
                      ],
                    ),
                  ),
                if (controller.selectedTab.value == 'Products')
                  Obx(
                    () => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: Column(
                        spacing: 6,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children:
                                controller.products.asMap().entries.map((
                                  entry,
                                ) {
                                  final index = entry.key;
                                  final product = entry.value;
                                  final isLast =
                                      index == controller.products.length - 1;

                                  return Padding(
                                    padding: EdgeInsets.only(
                                      right: isLast ? 0 : 15,
                                    ),
                                    child: ProductWidget(
                                      productImage: product['image']!,
                                      name: product['name']!,
                                      price: product['price']!,
                                      stockValue: product['stock']!,
                                      showStock: true,
                                      availableStock: "Low Stock",
                                    ),
                                  );
                                }).toList(),
                          ),
                        ],
                      ),
                    ),
                  ),
                if (controller.selectedTab.value == 'Requests')
                  Obx(
                    () => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: Column(
                        spacing: 6,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children:
                                controller.products.asMap().entries.map((
                                  entry,
                                ) {
                                  final index = entry.key;
                                  final product = entry.value;
                                  final isLast =
                                      index == controller.products.length - 1;

                                  return Padding(
                                    padding: EdgeInsets.only(
                                      right: isLast ? 0 : 15,
                                    ),
                                    child: ProductWidget(
                                      productImage: product['image']!,
                                      name: product['name']!,
                                      price: product['price']!,
                                      stockValue: product['stock']!,
                                      showStock: true,
                                      availableStock: "Pending Approval",
                                      isStockPending: true,
                                    ),
                                  );
                                }).toList(),
                          ),
                        ],
                      ),
                    ),
                  ),
                if (controller.selectedTab.value == 'View Support Chat')
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    child: Column(
                      spacing: 6,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DetailRowWidget(title: "Rating", detail: "4.5"),
                        DetailRowWidget(
                          title: "Review",
                          detail: "Lorem ipsum dolor sit amet, consetetur sadi sspscing elitr, sed diam \nnonumy",
                        ),
                        const SizedBox(height: 20),
                        Divider(
                          height: 0.4,
                          thickness: 0.4,
                          color: kGreyShade5Color,
                        ),
                        const SizedBox(height: 20),
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
                                      isMe
                                          ? Alignment.centerRight
                                          : Alignment.centerLeft,
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
                                        bottomLeft: Radius.circular(
                                          isMe ? 16 : 0,
                                        ),
                                        bottomRight: Radius.circular(
                                          isMe ? 0 : 16,
                                        ),
                                      ),
                                    ),
                                    constraints: BoxConstraints(maxWidth: 329),
                                    child: Text(
                                      text,
                                      style: AppStyles.blackTextStyle()
                                          .copyWith(fontSize: 16),
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
                if (controller.selectedTab.value == 'Ratings given')
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    child: Row(
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
                                  CustomButton(title: "View Rating", onTap: (){
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return viewTextDialogue(context);
                                      },
                                    );
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
                                  CustomButton(title: "View Rating", onTap: (){
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return viewTextDialogue(context);
                                      },
                                    );
                                  },color: kWhiteColor,borderColor: kPrimaryColor,textColor: kGreyShade9Color,textSize: 13,fontWeight: FontWeight.w400,height: 36,)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                if (controller.selectedTab.value == 'Ratings Received')
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    child: Row(
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
                                  CustomButton(title: "View Rating", onTap: (){

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
                                  CustomButton(title: "View Rating", onTap: (){

                                  },color: kWhiteColor,borderColor: kPrimaryColor,textColor: kGreyShade9Color,textSize: 13,fontWeight: FontWeight.w400,height: 36,)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                Container(
                  height: 66,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color: kGreyShade5Color, width: 0.4),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomButton(
                        title: "Cancel",
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
                        title: "De-activate User",
                        onTap: () {
                          Get.back();
                        },
                        height: 40,
                        width: 151,
                        textSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
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
              ClipRRect(
                borderRadius: BorderRadius.circular(9),
                  child: Image.asset(kProductImage, height: 47,width: 47,))
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
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 6,
                  children: [
                    DetailRowWidget(
                      title: "Phone  Number",
                      detail: "+91712351276",
                    ),
                    DetailRowWidget(
                      title: "Email",
                      detail: "Maliele@gmail.com",
                    ),
                    DetailRowWidget(title: "Name", detail: "Yasir Nawaz"),
                    DetailRowWidget(
                      title: "Registration Date",
                      detail: "2024-02-10",
                    ),
                    DetailRowWidget(
                      title: "Collection Points",
                      detail: "CP A and CP B",
                    ),
                  ],
                ),
              ),
              Container(
                height: 46,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: kGreyShade5Color, width: 0.4),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Chat Overview",
                      style: AppStyles.blackTextStyle().copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: kBlackColor,
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
                              "Customer Service",
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
                                  "Admin",
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
                                onSelected: (value) {},
                                itemBuilder: (BuildContext context) {
                                  return controller.employee.map((option) {
                                    return PopupMenuItem<String>(
                                      value: option,
                                      child: Obx(
                                            () => InkWell(
                                          onTap: (){
                                            controller.selectEmployeeOption(
                                              option,
                                            );
                                            Navigator.pop(context);
                                          },
                                          child: Row(
                                            children: [
                                              Checkbox(
                                                value:
                                                controller
                                                    .selectedEmployee
                                                    .value ==
                                                    option,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(4),
                                                ),
                                                side: BorderSide(
                                                  color: kBorderColor,
                                                  width: 1,
                                                ),
                                                onChanged: (bool? newValue) {
                                                  controller.selectEmployeeOption(
                                                    option,
                                                  );
                                                  Navigator.pop(context);
                                                },
                                                activeColor: kGreyShade1Color,
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
                          SizedBox(height: 32.h),
                          Container(
                            height: 70,
                            width: 603,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: kWhiteColor,
                              border: Border.all(
                                color: kGreyShade3Color,
                                width: 0.6,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SvgPicture.asset(
                                  kFilterIcon,
                                  height: 23,
                                  width: 20,
                                ),
                                Container(width: 0.3, color: kGreyShade5Color),
                                Text(
                                  "Filter By",
                                  style: AppStyles.blackTextStyle().copyWith(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Container(width: 0.3, color: kGreyShade5Color),
                                Obx(() {
                                  return Text(
                                    controller.selectedOption.value.isEmpty
                                        ? "Ratings"
                                        : controller.selectedOption.value,
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
                                  onSelected: (value) {},
                                  itemBuilder: (BuildContext context) {
                                    return controller.options.map((option) {
                                      return PopupMenuItem<String>(
                                        value: option,
                                        child: Obx(
                                              () => Row(
                                            children: [
                                              Checkbox(
                                                value:
                                                controller
                                                    .selectedOption
                                                    .value ==
                                                    option,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(4),
                                                ),
                                                side: BorderSide(
                                                  color: kBorderColor,
                                                  width: 1,
                                                ),
                                                onChanged: (bool? newValue) {
                                                  controller.selectOption(
                                                    option,
                                                  );
                                                  Navigator.pop(context);
                                                },
                                                activeColor: kGreyShade1Color,
                                              ),
                                              SizedBox(width: 8),
                                              Text(option),
                                            ],
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
                                Container(width: 0.3, color: kGreyShade5Color),
                                Obx(() {
                                  return Text(
                                    controller.selectedOption1.value.isEmpty
                                        ? "Work Hours"
                                        : controller.selectedOption1.value,
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
                                  onSelected: (value) {},
                                  itemBuilder: (BuildContext context) {
                                    return controller.options1.map((option) {
                                      return PopupMenuItem<String>(
                                        value: option,
                                        child: Obx(
                                              () => Row(
                                            children: [
                                              Checkbox(
                                                value:
                                                controller
                                                    .selectedOption1
                                                    .value ==
                                                    option,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(4),
                                                ),
                                                side: BorderSide(
                                                  color: kBorderColor,
                                                  width: 1,
                                                ),
                                                onChanged: (bool? newValue) {
                                                  controller.selectOption1(
                                                    option,
                                                  );
                                                  Navigator.pop(context);
                                                },
                                                activeColor: kGreyShade1Color,
                                              ),
                                              SizedBox(width: 8),
                                              Text(option),
                                            ],
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
                                Container(width: 0.3, color: kGreyShade5Color),
                                Obx(() {
                                  return Text(
                                    controller.selectedOption2.value.isEmpty
                                        ? "Decision Taken"
                                        : controller.selectedOption2.value,
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
                                  onSelected: (value) {},
                                  itemBuilder: (BuildContext context) {
                                    return controller.options2.map((option) {
                                      return PopupMenuItem<String>(
                                        value: option,
                                        child: Obx(
                                              () => Row(
                                            children: [
                                              Checkbox(
                                                value:
                                                controller
                                                    .selectedOption2
                                                    .value ==
                                                    option,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(4),
                                                ),
                                                side: BorderSide(
                                                  color: kBorderColor,
                                                  width: 1,
                                                ),
                                                onChanged: (bool? newValue) {
                                                  controller.selectOption2(
                                                    option,
                                                  );
                                                  Navigator.pop(context);
                                                },
                                                activeColor: kGreyShade1Color,
                                              ),
                                              SizedBox(width: 8),
                                              Text(option),
                                            ],
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
                          ),
                          SizedBox(height: 32.h),
                          if(controller.selectedEmployee.value == "By Employees") ...[
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
                                                "Employee ID",
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
                                                "Name",
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
                                                "Response Time",
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
                                                "Chats Handled",
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
                                                "Decisions Taken",
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
                                                "Work Hours",
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
                                                "Avg. Rating",
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
                                                "Actions",
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
                                            user['time']!,
                                            user['chats']!,
                                            user['decision']!,
                                            user['workHours'],
                                            user['avgRating'],
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
                            SizedBox(height: 51.h),
                            Obx(
                                  () => Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap:
                                    controller.isBackButtonDisabled
                                        ? null
                                        : controller.goToPreviousPage,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 8,
                                        horizontal: 12,
                                      ),
                                      decoration: BoxDecoration(
                                        color:
                                        controller.isBackButtonDisabled
                                            ? kCreamColor2
                                            : kPrimaryColor,
                                        border: Border.all(
                                          color:
                                          controller.isBackButtonDisabled
                                              ? kCreamColor2
                                              : kPrimaryColor,
                                        ),
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.arrow_back_ios_new_outlined,
                                            size: 12,
                                            color:
                                            controller.isBackButtonDisabled
                                                ? kBlackColor
                                                : kWhiteColor,
                                          ),
                                          const SizedBox(width: 4),
                                          Text(
                                            'Back',
                                            style: AppStyles.blackTextStyle()
                                                .copyWith(
                                              fontSize: 12,
                                              color:
                                              controller
                                                  .isBackButtonDisabled
                                                  ? kBlackColor
                                                  : kWhiteColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  ...List.generate(controller.totalPages, (
                                      index,
                                      ) {
                                    bool isSelected =
                                        index + 1 == controller.currentPage.value;
                                    return GestureDetector(
                                      onTap:
                                          () => controller.changePage(index + 1),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 6,
                                        ),
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 8,
                                            horizontal: 12,
                                          ),
                                          decoration: BoxDecoration(
                                            color:
                                            isSelected
                                                ? kPrimaryColor
                                                : kCreamColor2,
                                            borderRadius: BorderRadius.circular(
                                              4,
                                            ),
                                            border: Border.all(
                                              color:
                                              isSelected
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
                                                color:
                                                isSelected
                                                    ? kWhiteColor
                                                    : kBlackColor,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                                  // const SizedBox(width: 12,),
                                  GestureDetector(
                                    onTap:
                                    controller.isNextButtonDisabled
                                        ? null
                                        : controller.goToNextPage,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 8,
                                        horizontal: 12,
                                      ),
                                      decoration: BoxDecoration(
                                        color:
                                        controller.isNextButtonDisabled
                                            ? kCreamColor2
                                            : kPrimaryColor,
                                        border: Border.all(
                                          color:
                                          controller.isNextButtonDisabled
                                              ? kCreamColor2
                                              : kPrimaryColor,
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
                                              controller
                                                  .isNextButtonDisabled
                                                  ? kBlackColor
                                                  : kWhiteColor,
                                            ),
                                          ),
                                          const SizedBox(width: 4),
                                          Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            size: 12,
                                            color:
                                            controller.isNextButtonDisabled
                                                ? kBlackColor
                                                : kWhiteColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                          if(controller.selectedEmployee.value == "By Decisions") ...[
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
                                                "Decision ID",
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
                                                "Decision Type",
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
                                                "Issued By (Employee)",
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
                                                "Customer",
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
                                                "Reason",
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
                                                "Actions",
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
                                        controller.currentPageDecision
                                            .map(
                                              (user) => _buildDataRow1(
                                            user['id']!,
                                            user['dType']!,
                                            user['issuedBy']!,
                                            user['customer']!,
                                            user['reason']!,
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
                            SizedBox(height: 51.h),
                            Obx(
                                  () => Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap:
                                    controller.isBackButtonDisabled1
                                        ? null
                                        : controller.goToPreviousPage1,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 8,
                                        horizontal: 12,
                                      ),
                                      decoration: BoxDecoration(
                                        color:
                                        controller.isBackButtonDisabled1
                                            ? kCreamColor2
                                            : kPrimaryColor,
                                        border: Border.all(
                                          color:
                                          controller.isBackButtonDisabled1
                                              ? kCreamColor2
                                              : kPrimaryColor,
                                        ),
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.arrow_back_ios_new_outlined,
                                            size: 12,
                                            color:
                                            controller.isBackButtonDisabled1
                                                ? kBlackColor
                                                : kWhiteColor,
                                          ),
                                          const SizedBox(width: 4),
                                          Text(
                                            'Back',
                                            style: AppStyles.blackTextStyle()
                                                .copyWith(
                                              fontSize: 12,
                                              color:
                                              controller
                                                  .isBackButtonDisabled1
                                                  ? kBlackColor
                                                  : kWhiteColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  ...List.generate(controller.totalPages1, (
                                      index,
                                      ) {
                                    bool isSelected =
                                        index + 1 == controller.currentPage1.value;
                                    return GestureDetector(
                                      onTap:
                                          () => controller.changePage1(index + 1),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 6,
                                        ),
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 8,
                                            horizontal: 12,
                                          ),
                                          decoration: BoxDecoration(
                                            color:
                                            isSelected
                                                ? kPrimaryColor
                                                : kCreamColor2,
                                            borderRadius: BorderRadius.circular(
                                              4,
                                            ),
                                            border: Border.all(
                                              color:
                                              isSelected
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
                                                color:
                                                isSelected
                                                    ? kWhiteColor
                                                    : kBlackColor,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                                  // const SizedBox(width: 12,),
                                  GestureDetector(
                                    onTap:
                                    controller.isNextButtonDisabled1
                                        ? null
                                        : controller.goToNextPage1,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 8,
                                        horizontal: 12,
                                      ),
                                      decoration: BoxDecoration(
                                        color:
                                        controller.isNextButtonDisabled1
                                            ? kCreamColor2
                                            : kPrimaryColor,
                                        border: Border.all(
                                          color:
                                          controller.isNextButtonDisabled1
                                              ? kCreamColor2
                                              : kPrimaryColor,
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
                                              controller
                                                  .isNextButtonDisabled1
                                                  ? kBlackColor
                                                  : kWhiteColor,
                                            ),
                                          ),
                                          const SizedBox(width: 4),
                                          Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            size: 12,
                                            color:
                                            controller.isNextButtonDisabled1
                                                ? kBlackColor
                                                : kWhiteColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]
                        ],
                      ),
                    ),
                  ],
                ),),
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
    String responseTime,
    String chatsHandeled,
    String decision,
    String workHour,
    String averageRating,
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
            responseTime,
            textAlign: TextAlign.center,
            style: AppStyles.blackTextStyle().copyWith(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        DataCell(
          Text(
            chatsHandeled,
            textAlign: TextAlign.center,
            style: AppStyles.blackTextStyle().copyWith(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        DataCell(
          Text(
            decision,
            textAlign: TextAlign.center,
            style: AppStyles.blackTextStyle().copyWith(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        DataCell(
          Center(
            child: Text(
              workHour,
              textAlign: TextAlign.center,
              style: AppStyles.blackTextStyle().copyWith(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        DataCell(
          Center(
            child: Text(
              "$averageRating ⭐",
              textAlign: TextAlign.center,
              style: AppStyles.blackTextStyle().copyWith(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
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

  DataRow _buildDataRow1(
      String id,
      String decType,
      String issuedBy,
      String customer,
      String reason,
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
            decType,
            textAlign: TextAlign.center,
            style: AppStyles.blackTextStyle().copyWith(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        DataCell(
          Text(
            issuedBy,
            textAlign: TextAlign.center,
            style: AppStyles.blackTextStyle().copyWith(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        DataCell(
          Text(
            customer,
            textAlign: TextAlign.center,
            style: AppStyles.blackTextStyle().copyWith(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        DataCell(
          Text(
            reason,
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
                              return showChatDialogue(context);
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
