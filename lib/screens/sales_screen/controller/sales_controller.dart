import 'package:easy_localization/easy_localization.dart';
import 'package:farmer_admin/utils/app_strings.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_images.dart';

class SalesController extends GetxController {
  var selectedUserType = ''.obs;
  var selectedTab = "kRevenueGenerated".tr().obs;
  List<String> options = ["All", "${"kCollectionPoint".tr()} A", "${"kCollectionPoint".tr()} B"];
  RxString selectedOption = "".obs;
  RxDouble rating = 5.0.obs;
  List<String> employee = ["kEmployeePerformance".tr(), "kDecisionsTracking".tr()];
  RxString selectedEmployee = "kEmployeePerformance".tr().obs;

  void selectOption(String option) {
    selectedOption.value = option;
  }

  void resetSelection() {
    selectedOption.value = "";
  }

  void selectEmployeeOption(String option) {
    selectedEmployee.value = option;
  }

  final products = [
    {'name': 'Avocado', 'price': '\$8.00', 'stock': '200 lbs', 'image': kFruitImage},
    {'name': 'Avocado', 'price': '\$8.00', 'stock': '200 lbs', 'image': kFruitImage},
    {'name': 'Avocado', 'price': '\$8.00', 'stock': '200 lbs', 'image': kFruitImage},
    {'name': 'Avocado', 'price': '\$8.00', 'stock': '200 lbs', 'image': kFruitImage},
  ].obs;

  final List<Map<String, dynamic>> allUsers = [
    {'name' : "Christine Brooks", "orders": "80", "sales": "18,000", "avgResponse": "3.5",},
    {'name' : "Christine Brooks",  "orders": "50 (Supplied)", "sales": "18,000", "avgResponse": "3.5",},
    {'name' : "Rosie Pearson", "orders": "50 (Supplied)", "sales": "18,000", "avgResponse": "3.5",},
    {'name' : "Christine Brooks", "orders": "80", "sales": "18,000", "avgResponse": "3.5",},
    {'name' : "Christine Brooks", "orders": "80", "sales": "18,000", "avgResponse": "3.5",},
    {'name' : "Rosie Pearson", "orders": "80", "sales": "18,000", "avgResponse": "3.5",},
    {'name' : "Christine Brooks", "orders": "50 (Supplied)", "sales": "18,000", "avgResponse": "3.5",},
    {'name' : "Christine Brooks", "orders": "80", "sales": "18,000", "avgResponse": "3.5",},
    {'name' : "Christine Brooks", "orders": "50 (Supplied)", "sales": "18,000", "avgResponse": "3.5",},
    {'name' : "Rosie Pearson", "orders": "50 (Supplied)", "sales": "18,000", "avgResponse": "3.5",},
  ];

  final List<Map<String, dynamic>> allRequests = [
    {"id": "DEC-1023", 'name' : "Christine Brooks", "type": "Discount Approval", "collPoint": "Downtown Hub", "reason": "Approved 10% promo for bulk buy", },
    {"id": "DEC-1023", 'name' : "Christine Brooks", "type": "Refund Processed", "collPoint": "Downtown Hub", "reason": "Approved 10% promo for bulk buy", },
    {"id": "DEC-1023", 'name' : "Rosie Pearson", "type": "Discount Approval", "collPoint": "Downtown Hub", "reason": "Approved 10% promo for bulk buy", },
    {"id": "DEC-1023", 'name' : "Christine Brooks", "type": "Refund Processed", "collPoint": "Downtown Hub", "reason": "Approved 10% promo for bulk buy", },
    {"id": "DEC-1023", 'name' : "Christine Brooks", "type": "Order Cancellation", "collPoint": "Downtown Hub", "reason": "Approved 10% promo for bulk buy", },
    {"id": "DEC-1023", 'name' : "Rosie Pearson", "type": "Order Cancellation", "collPoint": "Downtown Hub", "reason": "Approved 10% promo for bulk buy", },
    {"id": "DEC-1023", 'name' : "Christine Brooks", "type": "Order Cancellation", "collPoint": "Downtown Hub", "reason": "Approved 10% promo for bulk buy", },
    {"id": "DEC-1023", 'name' : "Christine Brooks", "type": "Discount Approval", "collPoint": "Downtown Hub", "reason": "Approved 10% promo for bulk buy", },
    {"id": "DEC-1023", 'name' : "Christine Brooks", "type": "Discount Approval", "collPoint": "Downtown Hub", "reason": "Approved 10% promo for bulk buy", },
    {"id": "DEC-1023", 'name' : "Rosie Pearson", "type": "Refund Processed", "collPoint": "Downtown Hub", "reason": "Approved 10% promo for bulk buy",},
  ];

  final int itemsPerPage = 4;
  final int itemsPerPage1 = 4;

  final RxInt currentPage = 1.obs;
  final RxInt currentPage1 = 1.obs;

  List<Map<String, dynamic>> get currentPageUsers {
    final startIndex = (currentPage.value - 1) * itemsPerPage;
    final endIndex = startIndex + itemsPerPage;
    return allUsers.sublist(
      startIndex,
      endIndex > allUsers.length ? allUsers.length : endIndex,
    );
  }

  List<Map<String, dynamic>> get currentPageDecisions {
    final startIndex = (currentPage1.value - 1) * itemsPerPage1;
    final endIndex = startIndex + itemsPerPage1;
    return allRequests.sublist(
      startIndex,
      endIndex > allRequests.length ? allRequests.length : endIndex,
    );
  }

  int get totalPages => (allUsers.length / itemsPerPage).ceil();

  int get totalPages1 => (allRequests.length / itemsPerPage1).ceil();

  void changePage(int pageNumber) {
    if (pageNumber > 0 && pageNumber <= totalPages) {
      currentPage.value = pageNumber;
    }
  }

  void changePage1(int pageNumber) {
    if (pageNumber > 0 && pageNumber <= totalPages1) {
      currentPage1.value = pageNumber;
    }
  }

  void goToPreviousPage() {
    if (currentPage.value > 1) {
      currentPage.value -= 1;
    }
  }

  void goToPreviousPage1() {
    if (currentPage1.value > 1) {
      currentPage1.value -= 1;
    }
  }

  void goToNextPage() {
    if (currentPage.value < totalPages) {
      currentPage.value += 1;
    }
  }

  void goToNextPage1() {
    if (currentPage1.value < totalPages1) {
      currentPage1.value += 1;
    }
  }

  bool get isBackButtonDisabled => currentPage.value == 1;

  bool get isBackButtonDisabled1 => currentPage1.value == 1;

  bool get isNextButtonDisabled => currentPage.value == totalPages;

  bool get isNextButtonDisabled1 => currentPage1.value == totalPages1;

}