import 'package:easy_localization/easy_localization.dart';
import 'package:farmer_admin/utils/app_strings.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import '../../../utils/app_colors.dart';

class DashboardController extends GetxController {
  var selectedUserType = ''.obs;
  var selectedTab = "kUserDetails".tr().obs;
  List<String> options = ["k7Days".tr(), "k30Days".tr(), "k1Year".tr()];
  RxString selectedOption = "".obs;
  RxList<BarChartGroupData> barChartData = <BarChartGroupData>[].obs;

  void selectOption(String option) {
    selectedOption.value = option;
  }

  void resetSelection() {
    selectedOption.value = "";
  }

  void generateBarChartData() {
    List<double> rawData = [60, 40, 20, 120, 160, 100, 60];
    double maxBarHeight = 160.0;

    barChartData.value = rawData.asMap().entries.map((entry) {
      int index = entry.key;
      double value = entry.value;

      return BarChartGroupData(
        x: index,
        barRods: [
          BarChartRodData(
            toY: maxBarHeight,
            color: kBarColor,
            // borderSide: const BorderSide(color: kTableBorderColor),
            width: 10,
            borderRadius: BorderRadius.circular(8),
            rodStackItems: [
              BarChartRodStackItem(
                0,
                value,
                kPrimaryColor,
              ),
            ],
          ),
        ],
      );
    }).toList();
  }

  @override
  onInit(){
    super.onInit();
    generateBarChartData();
  }

  final List<Map<String, dynamic>> allUsers = [
    {"id": "00001", 'name' : "Christine Brooks", "type": "Driver", "email": "surfmaster92@gmail.com", "status": "Pending", "statusBackColor": kBlackTextColor, "StatusColor": kGreyShade1Color.withOpacity(0.2)},
    {"id": "00002", 'name' : "Christine Brooks", "type": "Supplier", "email": "surfmaster92@gmail.com", "status": "Pending", "statusBackColor": kBlackTextColor, "StatusColor": kGreyShade1Color.withOpacity(0.2)},
    {"id": "00003", 'name' : "Rosie Pearson", "type": "Supplier", "email": "surfmaster92@gmail.com", "status": "Pending", "statusBackColor": kBlackTextColor, "StatusColor": kGreyShade1Color.withOpacity(0.2)},
    {"id": "00004", 'name' : "Christine Brooks", "type": "Driver", "email": "surfmaster92@gmail.com", "status": "Confirmed", "statusBackColor": kPrimaryColor, "StatusColor": kPrimaryColor.withOpacity(0.2)},
    {"id": "00005", 'name' : "Christine Brooks", "type": "Driver", "email": "surfmaster92@gmail.com", "status": "Pending", "statusBackColor": kBlackTextColor, "StatusColor": kGreyShade1Color.withOpacity(0.2)},
    {"id": "00006", 'name' : "Rosie Pearson", "type": "Supplier", "email": "surfmaster92@gmail.com", "status": "Pending", "statusBackColor": kBlackTextColor, "StatusColor": kGreyShade1Color.withOpacity(0.2)},
    {"id": "00007", 'name' : "Christine Brooks", "type": "Driver", "email": "surfmaster92@gmail.com", "status": "Confirmed", "statusBackColor": kPrimaryColor, "StatusColor": kPrimaryColor.withOpacity(0.2)},
    {"id": "00008", 'name' : "Christine Brooks", "type": "Supplier", "email": "surfmaster92@gmail.com", "status": "Pending", "statusBackColor": kBlackTextColor, "StatusColor": kGreyShade1Color.withOpacity(0.2)},
    {"id": "00009", 'name' : "Christine Brooks", "type": "Driver", "email": "surfmaster92@gmail.com", "status": "Pending", "statusBackColor": kBlackTextColor, "StatusColor": kGreyShade1Color.withOpacity(0.2)},
    {"id": "00010", 'name' : "Rosie Pearson", "type": "Supplier", "email": "surfmaster92@gmail.com", "status": "Pending", "statusBackColor": kBlackTextColor, "StatusColor": kGreyShade1Color.withOpacity(0.2)},
  ];

  final int itemsPerPage = 4;

  final RxInt currentPage = 1.obs;

  List<Map<String, dynamic>> get currentPageUsers {
    final startIndex = (currentPage.value - 1) * itemsPerPage;
    final endIndex = startIndex + itemsPerPage;
    return allUsers.sublist(
      startIndex,
      endIndex > allUsers.length ? allUsers.length : endIndex,
    );
  }

  int get totalPages => (allUsers.length / itemsPerPage).ceil();

  void changePage(int pageNumber) {
    if (pageNumber > 0 && pageNumber <= totalPages) {
      currentPage.value = pageNumber;
    }
  }

  void goToPreviousPage() {
    if (currentPage.value > 1) {
      currentPage.value -= 1;
    }
  }

  void goToNextPage() {
    if (currentPage.value < totalPages) {
      currentPage.value += 1;
    }
  }

  bool get isBackButtonDisabled => currentPage.value == 1;

  bool get isNextButtonDisabled => currentPage.value == totalPages;

}