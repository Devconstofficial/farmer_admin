import 'package:get/get.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_images.dart';

class CollectionController extends GetxController {

  final List<Map<String, dynamic>> allCollections = [
    {"id": "00001", 'name' : "Christine Brooks", "Address": "979 Immanuel Ferry S", "assignedEmp": "80", },
    {"id": "00002", 'name' : "Christine Brooks", "Address": "979 Immanuel Ferry S", "assignedEmp": "50 (Supplied)",},
    {"id": "00003", 'name' : "Rosie Pearson", "Address": "979 Immanuel Ferry S", "assignedEmp": "50 (Supplied)", },
    {"id": "00004", 'name' : "Christine Brooks", "Address": "979 Immanuel Ferry S", "assignedEmp": "80",},
    {"id": "00005", 'name' : "Christine Brooks", "Address": "979 Immanuel Ferry S", "assignedEmp": "80", },
    {"id": "00006", 'name' : "Rosie Pearson", "Address": "979 Immanuel Ferry S", "assignedEmp": "80", },
    {"id": "00007", 'name' : "Christine Brooks", "Address": "979 Immanuel Ferry S", "assignedEmp": "50 (Supplied)", },
    {"id": "00008", 'name' : "Christine Brooks", "Address": "979 Immanuel Ferry S", "assignedEmp": "80", },
    {"id": "00009", 'name' : "Christine Brooks", "Address": "979 Immanuel Ferry S", "assignedEmp": "50 (Supplied)",},
    {"id": "00010", 'name' : "Rosie Pearson", "Address": "979 Immanuel Ferry S", "assignedEmp": "50 (Supplied)",},
  ];

  final int itemsPerPage = 4;

  final RxInt currentPage = 1.obs;

  List<Map<String, dynamic>> get currentPageUsers {
    final startIndex = (currentPage.value - 1) * itemsPerPage;
    final endIndex = startIndex + itemsPerPage;
    return allCollections.sublist(
      startIndex,
      endIndex > allCollections.length ? allCollections.length : endIndex,
    );
  }

  int get totalPages => (allCollections.length / itemsPerPage).ceil();

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