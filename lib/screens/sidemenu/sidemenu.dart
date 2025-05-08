import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_images.dart';
import '../../utils/app_strings.dart';
import '../../utils/app_styles.dart';
import 'controller/sidemenu_controller.dart';


class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  final menuController = Get.put(SideMenuController());

  @override
  Widget build(BuildContext context) {
    // bool isTablet = ResponsiveBreakpoints.of(context).largerThan(TABLET);
    double width = MediaQuery.of(context).size.width;

    return Drawer(
      backgroundColor: kWhiteColor,
      width: 260,
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 128,
              child: DrawerHeader(
                child: Padding(
                  padding: const EdgeInsets.only(left: 7.0),
                  child: Row(
                    children: [
                      SizedBox(
                          height: 42,
                          width: 160,
                          child: Center(
                            child: Image.asset(
                              kFullLogo,
                              fit: BoxFit.fitWidth,
                            ),)),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Obx(() {
                        return MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () {
                              menuController.onItemTapped(0);
                              Get.toNamed(kDashboardScreenRoute);
                            },
                            child: SizedBox(
                              width: width,
                              height: 58,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                        height: 58,
                                        decoration: BoxDecoration(
                                          color: menuController.selectedIndex.value == 0 ? kPrimaryColor : kWhiteColor,
                                          borderRadius: BorderRadius.circular(16)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only( left: 24),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                kDashboardIcon,
                                                height: 26,
                                                width: 26,
                                                colorFilter: ColorFilter.mode(
                                                  menuController.selectedIndex.value == 0 ? kWhiteColor : kBlackColor,
                                                  BlendMode.srcIn,
                                                ),
                                              ),
                                              SizedBox(width: MediaQuery.of(context).size.width * 0.01,),
                                              Text(
                                                "Dashboard",
                                                style: AppStyles.blackTextStyle().copyWith(
                                                    color: menuController.selectedIndex.value == 0
                                                        ? kWhiteColor
                                                        : kBlackTextColor,
                                                    fontSize: menuController.selectedIndex.value == 0
                                                        ? 17 : 14,
                                                  fontWeight: menuController.selectedIndex.value == 0
                                                      ? FontWeight.w600 : FontWeight.w400
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                      const SizedBox(height: 20,),
                      Obx(() {
                        return MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () {
                              menuController.onItemTapped(1);
                              Get.toNamed(kUserScreenRoute);
                            },
                            child: SizedBox(
                              width: width,
                              height: 58,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                        height: 58,
                                        decoration: BoxDecoration(
                                            color: menuController.selectedIndex.value == 1 ? kPrimaryColor : kWhiteColor,
                                            borderRadius: BorderRadius.circular(16)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only( left: 24),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                kUserIcon,
                                                height: 26,
                                                width: 26,
                                                colorFilter: ColorFilter.mode(
                                                  menuController.selectedIndex.value == 1 ? kWhiteColor : kBlackColor,
                                                  BlendMode.srcIn,
                                                ),
                                              ),
                                              SizedBox(width: MediaQuery.of(context).size.width * 0.01,),
                                              Text(
                                                "Users",
                                                style: AppStyles.blackTextStyle().copyWith(
                                                    color: menuController.selectedIndex.value == 1
                                                        ? kWhiteColor
                                                        : kBlackTextColor,
                                                    fontSize: menuController.selectedIndex.value == 1
                                                        ? 17 : 14,
                                                    fontWeight: menuController.selectedIndex.value == 1
                                                        ? FontWeight.w600 : FontWeight.w400
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                      const SizedBox(height: 20,),
                      Obx(() {
                        return MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () {
                              menuController.onItemTapped(2);
                              Get.toNamed(kSalesScreenRoute);
                            },
                            child: SizedBox(
                              width: width,
                              height: 58,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                        height: 58,
                                        decoration: BoxDecoration(
                                            color: menuController.selectedIndex.value == 2 ? kPrimaryColor : kWhiteColor,
                                            borderRadius: BorderRadius.circular(16)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only( left: 24),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                kSalesIcon,
                                                height: 26,
                                                width: 26,
                                                colorFilter: ColorFilter.mode(
                                                  menuController.selectedIndex.value == 2 ? kWhiteColor : kBlackColor,
                                                  BlendMode.srcIn,
                                                ),
                                              ),
                                              SizedBox(width: MediaQuery.of(context).size.width * 0.01,),
                                              Text(
                                                "Sales",
                                                style: AppStyles.blackTextStyle().copyWith(
                                                    color: menuController.selectedIndex.value == 2
                                                        ? kWhiteColor
                                                        : kBlackTextColor,
                                                    fontSize: menuController.selectedIndex.value == 2
                                                        ? 17 : 14,
                                                    fontWeight: menuController.selectedIndex.value == 2
                                                        ? FontWeight.w600 : FontWeight.w400
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                      const SizedBox(height: 20,),
                      Obx(() {
                        return MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () {
                              menuController.onItemTapped(3);
                              Get.toNamed(kChatScreenRoute);
                            },
                            child: SizedBox(
                              width: width,
                              height: 58,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                        height: 58,
                                        decoration: BoxDecoration(
                                            color: menuController.selectedIndex.value == 3 ? kPrimaryColor : kWhiteColor,
                                            borderRadius: BorderRadius.circular(16)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only( left: 24),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                kChatIcon,
                                                height: 26,
                                                width: 26,
                                                colorFilter: ColorFilter.mode(
                                                  menuController.selectedIndex.value == 3 ? kWhiteColor : kBlackColor,
                                                  BlendMode.srcIn,
                                                ),
                                              ),
                                              SizedBox(width: MediaQuery.of(context).size.width * 0.01,),
                                              Text(
                                                "Inbox",
                                                style: AppStyles.blackTextStyle().copyWith(
                                                    color: menuController.selectedIndex.value == 3
                                                        ? kWhiteColor
                                                        : kBlackTextColor,
                                                    fontSize: menuController.selectedIndex.value == 3
                                                        ? 17 : 14,
                                                    fontWeight: menuController.selectedIndex.value == 3
                                                        ? FontWeight.w600 : FontWeight.w400
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                      const SizedBox(height: 20,),
                      Obx(() {
                        return MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () {
                              menuController.onItemTapped(4);
                              Get.toNamed(kDistributionScreenRoute);
                            },
                            child: SizedBox(
                              width: width,
                              height: 58,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                        height: 58,
                                        decoration: BoxDecoration(
                                            color: menuController.selectedIndex.value == 4 ? kPrimaryColor : kWhiteColor,
                                            borderRadius: BorderRadius.circular(16)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only( left: 24),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                kEmployeIcon,
                                                height: 26,
                                                width: 26,
                                                colorFilter: ColorFilter.mode(
                                                  menuController.selectedIndex.value == 4 ? kWhiteColor : kBlackColor,
                                                  BlendMode.srcIn,
                                                ),
                                              ),
                                              SizedBox(width: MediaQuery.of(context).size.width * 0.01,),
                                              Expanded(
                                                child: Text(
                                                  "Distribution Employee",
                                                  style: AppStyles.blackTextStyle().copyWith(
                                                      color: menuController.selectedIndex.value == 4
                                                          ? kWhiteColor
                                                          : kBlackTextColor,
                                                      fontSize: menuController.selectedIndex.value == 4
                                                          ? 17 : 14,
                                                      fontWeight: menuController.selectedIndex.value == 4
                                                          ? FontWeight.w600 : FontWeight.w400
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                      const SizedBox(height: 20,),
                      Obx(() {
                        return MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () {
                              menuController.onItemTapped(5);
                              Get.toNamed(kCollectionScreenRoute);
                            },
                            child: SizedBox(
                              width: width,
                              height: 58,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                        height: 58,
                                        decoration: BoxDecoration(
                                            color: menuController.selectedIndex.value == 5 ? kPrimaryColor : kWhiteColor,
                                            borderRadius: BorderRadius.circular(16)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only( left: 24),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                kLocationIcon,
                                                height: 26,
                                                width: 26,
                                                // color: menuController.selectedIndex.value == 6 ? kWhiteColor : kBlackColor,
                                              ),
                                              SizedBox(width: MediaQuery.of(context).size.width * 0.01,),
                                              Text(
                                                "Collection Points",
                                                style: AppStyles.blackTextStyle().copyWith(
                                                    color: menuController.selectedIndex.value == 5
                                                        ? kWhiteColor
                                                        : kBlackTextColor,
                                                    fontSize: menuController.selectedIndex.value == 5
                                                        ? 17 : 14,
                                                    fontWeight: menuController.selectedIndex.value == 5
                                                        ? FontWeight.w600 : FontWeight.w400
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                      const SizedBox(height: 20,),
                      Obx(() {
                        return MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () {
                              menuController.onItemTapped(6);
                              Get.toNamed(kSupportScreenRoute);
                            },
                            child: SizedBox(
                              width: width,
                              height: 58,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                        height: 58,
                                        decoration: BoxDecoration(
                                            color: menuController.selectedIndex.value == 6 ? kPrimaryColor : kWhiteColor,
                                            borderRadius: BorderRadius.circular(16)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only( left: 24),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                kSupportIcon,
                                                height: 26,
                                                width: 26,
                                                colorFilter: ColorFilter.mode(
                                                  menuController.selectedIndex.value == 6 ? kWhiteColor : kBlackColor,
                                                  BlendMode.srcIn,
                                                ),
                                              ),
                                              SizedBox(width: MediaQuery.of(context).size.width * 0.01,),
                                              Text(
                                                "Support",
                                                style: AppStyles.blackTextStyle().copyWith(
                                                    color: menuController.selectedIndex.value == 6
                                                        ? kWhiteColor
                                                        : kBlackTextColor,
                                                    fontSize: menuController.selectedIndex.value == 6
                                                        ? 17 : 14,
                                                    fontWeight: menuController.selectedIndex.value == 6
                                                        ? FontWeight.w600 : FontWeight.w400
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                      const SizedBox(height: 20,),
                      Obx(() {
                        return MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () {
                              menuController.onItemTapped(7);
                            },
                            child: SizedBox(
                              width: width,
                              height: 58,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                        height: 58,
                                        decoration: BoxDecoration(
                                            color: menuController.selectedIndex.value == 7 ? kPrimaryColor : kWhiteColor,
                                            borderRadius: BorderRadius.circular(16)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only( left: 24),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                kPolicyImage,
                                                height: 26,
                                                width: 26,
                                                colorFilter: ColorFilter.mode(
                                                  menuController.selectedIndex.value == 7 ? kWhiteColor : kBlackColor,
                                                  BlendMode.srcIn,
                                                ),
                                              ),
                                              SizedBox(width: MediaQuery.of(context).size.width * 0.01,),
                                              Text(
                                                "Terms & Condition",
                                                style: AppStyles.blackTextStyle().copyWith(
                                                    color: menuController.selectedIndex.value == 7
                                                        ? kWhiteColor
                                                        : kBlackTextColor,
                                                    fontSize: menuController.selectedIndex.value == 7
                                                        ? 17 : 14,
                                                    fontWeight: menuController.selectedIndex.value == 7
                                                        ? FontWeight.w600 : FontWeight.w400
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                    ],
                  ),
                ),
              ),
            ),
            // const Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 15,bottom: 35),
              child: Obx(() {
                return MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      menuController.onItemTapped(8);
                      // Get.offAllNamed(kListingScreenRoute);
                    },
                    child: SizedBox(
                      width: width,
                      height: 58,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                                height: 58,
                                decoration: BoxDecoration(
                                    color: menuController.selectedIndex.value == 8 ? kPrimaryColor : kWhiteColor,
                                    borderRadius: BorderRadius.circular(16)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only( left: 24),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        kLogoutIcon,
                                        height: 26,
                                        width: 26,
                                        colorFilter: ColorFilter.mode(
                                          menuController.selectedIndex.value == 8 ? kWhiteColor : kPrimaryColor,
                                          BlendMode.srcIn,
                                        ),
                                      ),
                                      SizedBox(width: MediaQuery.of(context).size.width * 0.01,),
                                      Text(
                                        "Logout",
                                        style: AppStyles.blackTextStyle().copyWith(
                                            color: menuController.selectedIndex.value == 8
                                                ? kWhiteColor
                                                : kPrimaryColor,
                                            fontSize: menuController.selectedIndex.value == 8
                                                ? 17 : 14,
                                            fontWeight: menuController.selectedIndex.value == 8
                                                ? FontWeight.w600 : FontWeight.w400
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}