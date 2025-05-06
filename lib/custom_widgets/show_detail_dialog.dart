import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../utils/app_colors.dart';
import '../utils/app_images.dart';
import '../utils/app_styles.dart';
import 'custom_button.dart';
import 'detail_row.dart';

Widget showDetailDialogue(BuildContext context) {

  return Dialog(
    backgroundColor: kWhiteColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    child: SizedBox(
      width: 626,
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
                  bottom: BorderSide(
                    color: kGreyShade5Color,
                    width: 0.4
                  )
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Order Detail",
                    style: AppStyles.blackTextStyle()
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w700),
                  ),
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
            const SizedBox(
              height: 24,
            ),
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  title: "Cancel",
                  height: 40,
                  onTap: () {
                    Get.back();
                  },
                  width: 75,
                  textColor: kBlackColor,
                  color: kWhiteColor,
                  borderColor: kBorderColor,
                  textSize: 12,
                  fontWeight: FontWeight.w600,
                ),
                CustomButton(
                  title: "Hide Details",
                  height: 40,
                  onTap: () {
                    Get.back();
                  },
                  width: 114,
                  textSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}