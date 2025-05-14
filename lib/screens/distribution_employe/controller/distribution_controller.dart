import 'package:get/get.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_images.dart';

class DistributionController extends GetxController {
  var selectedUserType = ''.obs;
  RxDouble rating = 5.0.obs;
  var selectedTab = 'Detail Overview'.obs;
  var showDetail = false.obs;
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

  var messages = <Map<String, dynamic>>[
    {'text': "Hello, I want to make enquiries about your product", 'isMe': false},
    {'text': "Hello, I want to make enquiries about your product", 'isMe': false},
    {'text': "Hello Janet, thank you for reaching out", 'isMe': true},
    {'text': "Hello Janet, thank you for reaching out", 'isMe': true},
  ].obs;

  final products = [
    {'name': 'Avocado', 'price': '\$8.00', 'stock': '200 lbs', 'image': kFruitImage},
    {'name': 'Avocado', 'price': '\$8.00', 'stock': '200 lbs', 'image': kFruitImage},
    {'name': 'Avocado', 'price': '\$8.00', 'stock': '200 lbs', 'image': kFruitImage},
    {'name': 'Avocado', 'price': '\$8.00', 'stock': '200 lbs', 'image': kFruitImage},
  ].obs;


  final List<Map<String, dynamic>> allRequests = [
    {"id": "REQ-1023", 'name' : "Christine Brooks", "type": "Supplier Arrival", "requester": "ABC", "status": "Pending", "statusBackColor": kBlackTextColor, "StatusColor": kGreyShade1Color.withOpacity(0.2), "notes" : "Supplier verified on arrival"},
    {"id": "REQ-1023", 'name' : "Christine Brooks", "type": "Supplier Arrival", "requester": "ABC", "status": "Pending", "statusBackColor": kBlackTextColor, "StatusColor": kGreyShade1Color.withOpacity(0.2), "notes" : "Supplier verified on arrival"},
    {"id": "REQ-1023", 'name' : "Rosie Pearson", "type": "Driver Pickup", "requester": "ABC", "status": "Pending", "statusBackColor": kBlackTextColor, "StatusColor": kGreyShade1Color.withOpacity(0.2), "notes" : "Supplier verified on arrival"},
    {"id": "REQ-1023", 'name' : "Christine Brooks", "type": "Supplier Arrival", "requester": "ABC", "status": "Approved", "statusBackColor": kPrimaryColor, "StatusColor": kPrimaryColor.withOpacity(0.2), "notes" : "Supplier verified on arrival"},
    {"id": "REQ-1023", 'name' : "Christine Brooks", "type": "Supplier Arrival", "requester": "ABC", "status": "Pending", "statusBackColor": kBlackTextColor, "StatusColor": kGreyShade1Color.withOpacity(0.2), "notes" : "Supplier verified on arrival"},
    {"id": "REQ-1023", 'name' : "Rosie Pearson", "type": "Driver Pickup", "requester": "ABC", "status": "Pending", "statusBackColor": kBlackTextColor, "StatusColor": kGreyShade1Color.withOpacity(0.2), "notes" : "Supplier verified on arrival"},
    {"id": "REQ-1023", 'name' : "Christine Brooks", "type": "Driver Pickup", "requester": "ABC", "status": "Approved", "statusBackColor": kPrimaryColor, "StatusColor": kPrimaryColor.withOpacity(0.2), "notes" : "Supplier verified on arrival"},
    {"id": "REQ-1023", 'name' : "Christine Brooks", "type": "Supplier Arrival", "requester": "ABC", "status": "Pending", "statusBackColor": kBlackTextColor, "StatusColor": kGreyShade1Color.withOpacity(0.2), "notes" : "Supplier verified on arrival"},
    {"id": "REQ-1023", 'name' : "Christine Brooks", "type": "Supplier Arrival", "requester": "ABC", "status": "Pending", "statusBackColor": kBlackTextColor, "StatusColor": kGreyShade1Color.withOpacity(0.2), "notes" : "Supplier verified on arrival"},
    {"id": "REQ-1023", 'name' : "Rosie Pearson", "type": "Driver Pickup", "requester": "ABC", "status": "Pending", "statusBackColor": kBlackTextColor, "StatusColor": kGreyShade1Color.withOpacity(0.2), "notes" : "Supplier verified on arrival"},
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