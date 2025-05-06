import 'package:get/get.dart';
import '../../../utils/app_colors.dart';

class ReportController extends GetxController {
  var selectedUserType = ''.obs;
  List<String> options = ["Approved", "Pending", "Rejected"];
  RxString selectedOption = "".obs;

  void selectOption(String option) {
    selectedOption.value = option;
  }

  void resetSelection() {
    selectedOption.value = "";
  }

  final List<Map<String, dynamic>> allUsers = [
    { 'name' : "Christine Brooks", "type": "Customer Service", "decision": "Issued refund", "purpose" : "Verified stock", "status": "Pending", "statusBackColor": kBlackTextColor, "StatusColor": kGreyShade1Color.withOpacity(0.2)},
    {'name' : "Christine Brooks", "type": "Customer Service", "decision": "Issued refund", "purpose" : "Verified stock", "status": "Pending", "statusBackColor": kBlackTextColor, "StatusColor": kGreyShade1Color.withOpacity(0.2)},
    {'name' : "Rosie Pearson", "type": "Distribution", "decision": "Issued refund", "purpose" : "Verified stock", "status": "Rejected", "statusBackColor": kRedColor, "StatusColor": kRedColor.withOpacity(0.2)},
    {'name' : "Christine Brooks", "type": "Distribution", "decision": "Approved driver request", "purpose" : "Verified stock", "status": "Approved", "statusBackColor": kPrimaryColor, "StatusColor": kPrimaryColor.withOpacity(0.2)},
    {'name' : "Christine Brooks", "type": "Customer Service", "decision": "Issued refund", "purpose" : "Verified stock", "status": "Pending", "statusBackColor": kBlackTextColor, "StatusColor": kGreyShade1Color.withOpacity(0.2)},
    {'name' : "Rosie Pearson", "type": "Distribution", "decision": "Approved driver request", "purpose" : "Verified stock", "status": "Pending", "statusBackColor": kBlackTextColor, "StatusColor": kGreyShade1Color.withOpacity(0.2)},
    {'name' : "Christine Brooks", "type": "Customer Service", "decision": "Issued refund", "purpose" : "Verified stock", "status": "Approved", "statusBackColor": kPrimaryColor, "StatusColor": kPrimaryColor.withOpacity(0.2)},
    {'name' : "Christine Brooks", "type": "Distribution", "decision": "Approved driver request", "purpose" : "Verified stock", "status": "Rejected", "statusBackColor": kRedColor, "StatusColor": kRedColor.withOpacity(0.2)},
    {'name' : "Christine Brooks", "type": "Customer Service", "decision": "Issued refund", "purpose" : "Verified stock", "status": "Rejected", "statusBackColor": kRedColor, "StatusColor": kRedColor.withOpacity(0.2)},
    {'name' : "Rosie Pearson", "type": "Customer Service", "decision": "Approved driver request", "purpose" : "Verified stock", "status": "Pending", "statusBackColor": kBlackTextColor, "StatusColor": kGreyShade1Color.withOpacity(0.2)},
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