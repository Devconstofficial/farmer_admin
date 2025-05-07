import 'package:get/get.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_images.dart';

class SalesController extends GetxController {
  var selectedUserType = ''.obs;
  var selectedTab = 'Revenue Generated'.obs;
  List<String> options = ["All", "Collection Point A", "Collection Point B"];
  RxString selectedOption = "".obs;
  RxDouble rating = 5.0.obs;
  List<String> employee = ["By Decisions", "By Employees"];
  RxString selectedEmployee = "By Employees".obs;

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