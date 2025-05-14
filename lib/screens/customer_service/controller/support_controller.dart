import 'package:get/get.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_images.dart';

class SupportController extends GetxController {
  var selectedUserType = ''.obs;
  RxDouble rating = 5.0.obs;
  var selectedTab = 'User Details'.obs;
  List<String> employee = ["By Decisions", "By Employees"];
  RxString selectedEmployee = "By Employees".obs;
  List<String> options = ["4.5", "5.0"];
  RxString selectedOption = "".obs;
  List<String> options1 = ["40 hrs/week", "40 hrs/week"];
  RxString selectedOption1 = "".obs;
  List<String> options2 = ["80", "100"];
  RxString selectedOption2 = "".obs;

  final products = [
    {'name': 'Avocado', 'price': '\$8.00', 'stock': '200 lbs', 'image': kFruitImage},
    {'name': 'Avocado', 'price': '\$8.00', 'stock': '200 lbs', 'image': kFruitImage},
    {'name': 'Avocado', 'price': '\$8.00', 'stock': '200 lbs', 'image': kFruitImage},
    {'name': 'Avocado', 'price': '\$8.00', 'stock': '200 lbs', 'image': kFruitImage},
  ].obs;

  final pendingProducts = [
    {'name': 'Avocado', 'price': '\$8.00', 'stock': '200 lbs', 'image': kFruitImage},
    {'name': 'Avocado', 'price': '\$8.00', 'stock': '200 lbs', 'image': kFruitImage},
    {'name': 'Avocado', 'price': '\$8.00', 'stock': '200 lbs', 'image': kFruitImage},
    {'name': 'Avocado', 'price': '\$8.00', 'stock': '200 lbs', 'image': kFruitImage},
  ].obs;

  var messages = <Map<String, dynamic>>[
    {'text': "Hello, I want to make enquiries about your product", 'isMe': false},
    {'text': "Hello, I want to make enquiries about your product", 'isMe': false},
    {'text': "Hello Janet, thank you for reaching out", 'isMe': true},
    {'text': "Hello Janet, thank you for reaching out", 'isMe': true},
  ].obs;

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

  final List<Map<String, dynamic>> allDecisions = [
    {"id": "D-101", 'dType' : "Order Cancellation", "issuedBy": "John Smith", "customer": "Alex Doe", "reason": "Product out of stock", },
    {"id": "D-101", 'dType' : "Refund Issued", "issuedBy": "John Smith", "customer": "Alex Doe", "reason": "Damaged item",},
    {"id": "D-101", 'dType' : "Discount Given", "issuedBy": "John Smith", "customer": "Alex Doe", "reason": "Damaged item",},
    {"id": "D-101", 'dType' : "Discount Given", "issuedBy": "John Smith", "customer": "Alex Doe", "reason": "Damaged item",},
    {"id": "D-101", 'dType' : "Refund Issued", "issuedBy": "John Smith", "customer": "Alex Doe", "reason": "Product out of stock",},
    {"id": "D-101", 'dType' : "Order Cancellation", "issuedBy": "John Smith", "customer": "Alex Doe", "reason": "Damaged item", },
    {"id": "D-101", 'dType' : "Refund Issued", "issuedBy": "John Smith", "customer": "Alex Doe", "reason": "Damaged item", },
    {"id": "D-101", 'dType' : "Discount Given", "issuedBy": "John Smith", "customer": "Alex Doe", "reason": "Product out of stock", },
    {"id": "D-101", 'dType' : "Order Cancellation", "issuedBy": "John Smith", "customer": "Alex Doe", "reason": "Damaged item", },
    {"id": "D-101", 'dType' : "Order Cancellation", "issuedBy": "John Smith", "customer": "Alex Doe", "reason": "Product out of stock",},
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

  List<Map<String, dynamic>> get currentPageDecision {
    final startIndex = (currentPage1.value - 1) * itemsPerPage1;
    final endIndex = startIndex + itemsPerPage1;
    return allDecisions.sublist(
      startIndex,
      endIndex > allDecisions.length ? allDecisions.length : endIndex,
    );
  }

  int get totalPages => (allUsers.length / itemsPerPage).ceil();

  int get totalPages1 => (allDecisions.length / itemsPerPage1).ceil();

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

  bool get isNextButtonDisabled1 => currentPage1.value == totalPages;

}