import 'package:get/get.dart';
import '../../../utils/app_colors.dart';

class SupportController extends GetxController {
  var selectedUserType = ''.obs;
  RxDouble rating = 5.0.obs;
  var selectedTab = 'Revenue Generated'.obs;
  List<String> employee = ["By Decisions", "By Employees"];
  RxString selectedEmployee = "By Employees".obs;
  List<String> options = ["4.5", "5.0"];
  RxString selectedOption = "".obs;
  List<String> options1 = ["40 hrs/week", "40 hrs/week"];
  RxString selectedOption1 = "".obs;
  List<String> options2 = ["80", "100"];
  RxString selectedOption2 = "".obs;

  void selectOption(String option) {
    selectedOption.value = option;
  }
  void selectEmployeeOption(String option) {
    selectedEmployee.value = option;
  }
  void selectOption1(String option) {
    selectedOption1.value = option;
  }

  void selectOption2(String option) {
    selectedOption2.value = option;
  }

  void resetSelection() {
    selectedOption.value = "";
  }

  final List<Map<String, dynamic>> allUsers = [
    {"id": "CS-001", 'name' : "Christine Brooks", "time": "Fast", "chats": "80", "status": "Banned", "decision" : "80","workHours" : "40 hrs/week", "avgRating" : "4.5"},
    {"id": "CS-001", 'name' : "Christine Brooks", "time": "Fast", "chats": "80", "status": "Banned", "decision" : "80","workHours" : "40 hrs/week", "avgRating" : "4.5"},
    {"id": "CS-001", 'name' : "Rosie Pearson", "time": "Fast", "chats": "80", "status": "Banned", "decision" : "80","workHours" : "40 hrs/week", "avgRating" : "4.5"},
    {"id": "CS-001", 'name' : "Christine Brooks", "time": "Fast", "chats": "80", "status": "Active", "decision" : "80","workHours" : "40 hrs/week", "avgRating" : "4.5"},
    {"id": "CS-001", 'name' : "Christine Brooks", "time": "Fast", "chats": "80", "status": "Banned", "decision" : "80","workHours" : "40 hrs/week", "avgRating" : "4.5"},
    {"id": "CS-001", 'name' : "Rosie Pearson", "time": "Fast", "chats": "80", "status": "Banned", "decision" : "80","workHours" : "40 hrs/week", "avgRating" : "4.5"},
    {"id": "CS-001", 'name' : "Christine Brooks", "time": "Fast", "chats": "80", "status": "Active", "decision" : "80","workHours" : "40 hrs/week", "avgRating" : "4.5"},
    {"id": "CS-001", 'name' : "Christine Brooks", "time": "Fast", "chats": "80", "status": "Banned", "decision" : "80","workHours" : "40 hrs/week", "avgRating" : "4.5"},
    {"id": "CS-001", 'name' : "Christine Brooks", "time": "Fast", "chats": "80", "status": "Banned", "decision" : "80","workHours" : "40 hrs/week", "avgRating" : "4.5"},
    {"id": "CS-001", 'name' : "Rosie Pearson", "time": "Fast", "chats": "80", "status": "Banned", "decision" : "80","workHours" : "40 hrs/week", "avgRating" : "4.5"},
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