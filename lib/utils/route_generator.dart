import 'package:farmer_admin/utils/screen_bindings.dart';
import 'package:get/get.dart';
import '../screens/chat_screen/chat_screen.dart';
import '../screens/dashboard_screen/dashboard_screen.dart';
import '../screens/employee_screen/employee_screen.dart';
import '../screens/report_screen/report_screen.dart';
import '../screens/sales_screen/sales_srceen.dart';
import '../screens/user_screen/user_screen.dart';
import 'app_strings.dart';


class RouteGenerator {
  static List<GetPage> getPages() {
    return [
      GetPage(name: kDashboardScreenRoute, page: () => DashboardScreen(), binding: ScreenBindings(),),
      GetPage(name: kUserScreenRoute, page: () => UserScreen(), binding: ScreenBindings(),),
      GetPage(name: kEmployeeScreenRoute, page: () => EmployeeScreen(), binding: ScreenBindings(),),
      GetPage(name: kReportScreenRoute, page: () => ReportScreen(), binding: ScreenBindings(),),
      GetPage(name: kSalesScreenRoute, page: () => SalesScreen(), binding: ScreenBindings(),),
      GetPage(name: kChatScreenRoute, page: () => ChatScreen(), binding: ScreenBindings(),),
      ];
  }
}

