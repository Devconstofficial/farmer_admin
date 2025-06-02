import 'package:farmer_admin/screens/distribution_employe/controller/distribution_controller.dart';
import 'package:farmer_admin/screens/terms_condition/controller/terms_controller.dart';
import 'package:get/get.dart';
import '../screens/auth/controller/auth_controller.dart';
import '../screens/chat_screen/controller/chat_controller.dart';
import '../screens/collection_points_screen/controller/collection_controller.dart';
import '../screens/customer_service/controller/support_controller.dart';
import '../screens/dashboard_screen/controller/dashboard_controller.dart';
import '../screens/employee_screen/controller/employee_controller.dart';
import '../screens/sales_screen/controller/sales_controller.dart';
import '../screens/user_screen/controller/user_controller.dart';

class ScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
    Get.lazyPut(() => UserController());
    Get.lazyPut(() => EmployeeController());
    Get.lazyPut(() => SalesController());
    Get.lazyPut(() => ChatController());
    Get.lazyPut(() => SupportController());
    Get.lazyPut(() => CollectionController());
    Get.lazyPut(() => DistributionController());
    Get.lazyPut(() => TermsController());
    Get.lazyPut(() => AuthController());

  }
}
