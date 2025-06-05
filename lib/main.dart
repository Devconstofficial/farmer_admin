import 'package:farmer_admin/utils/app_strings.dart';
import 'package:farmer_admin/utils/app_theme.dart';
import 'package:farmer_admin/utils/route_generator.dart';
import 'package:farmer_admin/utils/screen_bindings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:easy_localization/easy_localization.dart' as localization;


void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await localization.EasyLocalization.ensureInitialized();
  runApp(localization.EasyLocalization(
      supportedLocales: const [
        Locale("en", "US"),
        Locale("ar", "SA"),
      ],
      saveLocale: true,
      path: 'assets/translations',
      fallbackLocale: const Locale("en", "US"),
      child: const MyApp()),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 1024),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          theme: buildTheme(Brightness.light),
          title: kAppName,
          defaultTransition: Transition.noTransition,
          debugShowCheckedModeBanner: false,
          initialBinding: ScreenBindings(),
          initialRoute: kAuthScreenRoute,
          getPages: RouteGenerator.getPages(),
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          builder: (context, child) {
            Locale locale = Localizations.localeOf(context);
            return  Directionality(
              textDirection: locale.languageCode == 'ar' ? TextDirection.rtl : TextDirection.ltr,
              child: MediaQuery(
                data: MediaQuery.of(context).copyWith(
                  textScaler: TextScaler.linear(
                    MediaQuery.of(context).textScaleFactor.clamp(1.0, 1.0),
                  ),
                ),
                child: child!,
              ),
            );
          },
        );
      },
    );
  }
}
