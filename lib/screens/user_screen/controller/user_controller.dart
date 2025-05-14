import 'package:get/get.dart';
import '../../../utils/app_colors.dart';

class UserController extends GetxController {
  var selectedUserType = ''.obs;
  var showDetail = false.obs;
  RxDouble rating = 4.5.obs;
  var selectedTab = 'User Details'.obs;
  List<String> options = ["Customer", "Supplier"];
  RxString selectedOption = "".obs;
  var messages = <Map<String, dynamic>>[
    {'text': "Hello, I want to make enquiries about your product", 'isMe': false},
    {'text': "Hello, I want to make enquiries about your product", 'isMe': false},
    {'text': "Hello Janet, thank you for reaching out", 'isMe': true},
    {'text': "Hello Janet, thank you for reaching out", 'isMe': true},
  ].obs;

  void selectOption(String option) {
    selectedOption.value = option;
  }

  void resetSelection() {
    selectedOption.value = "";
  }

  final List<Map<String, dynamic>> allUsers = [
    {"id": "00001", 'name' : "Christine Brooks", "type": "Customer", "orders": "80", "status": "Banned", "statusBackColor": kBlackTextColor, "StatusColor": kGreyShade1Color.withOpacity(0.2)},
    {"id": "00002", 'name' : "Christine Brooks", "type": "Supplier", "orders": "50 (Supplied)", "status": "Banned", "statusBackColor": kBlackTextColor, "StatusColor": kGreyShade1Color.withOpacity(0.2)},
    {"id": "00003", 'name' : "Rosie Pearson", "type": "Supplier", "orders": "50 (Supplied)", "status": "Banned", "statusBackColor": kBlackTextColor, "StatusColor": kGreyShade1Color.withOpacity(0.2)},
    {"id": "00004", 'name' : "Christine Brooks", "type": "Customer", "orders": "80", "status": "Active", "statusBackColor": kPrimaryColor, "StatusColor": kPrimaryColor.withOpacity(0.2)},
    {"id": "00005", 'name' : "Christine Brooks", "type": "Customer", "orders": "80", "status": "Banned", "statusBackColor": kBlackTextColor, "StatusColor": kGreyShade1Color.withOpacity(0.2)},
    {"id": "00006", 'name' : "Rosie Pearson", "type": "Supplier", "orders": "80", "status": "Banned", "statusBackColor": kBlackTextColor, "StatusColor": kGreyShade1Color.withOpacity(0.2)},
    {"id": "00007", 'name' : "Christine Brooks", "type": "Customer", "orders": "50 (Supplied)", "status": "Active", "statusBackColor": kPrimaryColor, "StatusColor": kPrimaryColor.withOpacity(0.2)},
    {"id": "00008", 'name' : "Christine Brooks", "type": "Supplier", "orders": "80", "status": "Banned", "statusBackColor": kBlackTextColor, "StatusColor": kGreyShade1Color.withOpacity(0.2)},
    {"id": "00009", 'name' : "Christine Brooks", "type": "Customer", "orders": "50 (Supplied)", "status": "Banned", "statusBackColor": kBlackTextColor, "StatusColor": kGreyShade1Color.withOpacity(0.2)},
    {"id": "00010", 'name' : "Rosie Pearson", "type": "Supplier", "orders": "50 (Supplied)", "status": "Banned", "statusBackColor": kBlackTextColor, "StatusColor": kGreyShade1Color.withOpacity(0.2)},
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