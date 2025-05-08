import 'package:get/get.dart';
import '../../../utils/app_colors.dart';

class DistributionController extends GetxController {
  var selectedUserType = ''.obs;
  RxDouble rating = 5.0.obs;
  var selectedTab = 'Revenue Generated'.obs;
  List<String> options = ["Customer", "Supplier"];
  RxString selectedOption = "".obs;
  List<String> employee = ["Employee Performance", "Request Approval"];
  RxString selectedEmployee = "Employee Performance".obs;

  void selectEmployeeOption(String option) {
    selectedEmployee.value = option;
  }

  void selectOption(String option) {
    selectedOption.value = option;
  }

  void resetSelection() {
    selectedOption.value = "";
  }

  final List<Map<String, dynamic>> allUsers = [
    {'name' : "Christine Brooks", "point": "Downtown Hub", "orders": "80", "approvals": "80 | 98",},
    {'name' : "Christine Brooks", "point": "East Side", "orders": "50", "approvals": "80 | 98",},
    {'name' : "Rosie Pearson", "point": "West Point", "orders": "50", "approvals": "80 | 98",},
    {'name' : "Christine Brooks", "point": "West Point", "orders": "80", "approvals": "80 | 98",},
    {'name' : "Christine Brooks", "point": "West Point", "orders": "80", "approvals": "80 | 98",},
    {'name' : "Rosie Pearson", "point": "West Point", "orders": "80", "approvals": "80 | 98", },
    {'name' : "Christine Brooks", "point": "Downtown Hub", "orders": "50", "approvals": "80 | 98", },
    {'name' : "Christine Brooks", "point": "Downtown Hub", "orders": "80", "approvals": "80 | 98", },
    {'name' : "Christine Brooks", "point": "Downtown Hub", "orders": "50", "approvals": "80 | 98", },
    {'name' : "Rosie Pearson", "point": "Downtown Hub", "orders": "50", "approvals": "80 | 98",},
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