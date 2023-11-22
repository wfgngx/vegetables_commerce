// import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:vegetables_commerce/screens/auth_screens/login_screen.dart';
// import 'package:vegetables_commerce/screens/bottom_nav_bar_screens/home_screen.dart';
// import 'package:vegetables_commerce/screens/onBoarding_screens/first_onboarding_screen.dart';
// import 'package:vegetables_commerce/screens/splash_screen.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return ScreenUtilInit(
//         designSize: const Size(360, 690),
//         minTextAdapt: true,
//         splitScreenMode: true,
//         builder: (_, child) {
//           return const MaterialApp(
//
//             debugShowCheckedModeBanner: false,
//             localizationsDelegates: [
//               GlobalMaterialLocalizations.delegate,
//               GlobalWidgetsLocalizations.delegate,
//               GlobalCupertinoLocalizations.delegate,
//             ],
//             supportedLocales: [
//               // Locale('en'), // English
//               Locale('ar'), // Spanish
//             ],
//             home: HomeScreen(),
//           );
//         });
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vegetables_commerce/screens/auth_screens/login_screen.dart';
import 'package:vegetables_commerce/screens/bottom_nav_bar_screens/home_screen.dart';
import 'package:vegetables_commerce/screens/category_details_screen.dart';
import 'package:vegetables_commerce/screens/onBoarding_screens/first_onboarding_screen.dart';
import 'package:vegetables_commerce/screens/splash_screen.dart';
import 'package:vegetables_commerce/widgets/error_widget_chat_gpt_test.dart';

void main() {

    runApp(
      // WidgetsFlutterBinding.ensureInitialized()
        const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      // splitScreenMode: true,
      builder: (_, child) {
        // ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
        //   return YourErrorWidget(); // Customize this widget for your error message
        // };

        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: [
            // Locale('en'), // English
            Locale('ar'), // Spanish
          ],
          home: FirstOnBoardingScreen(),
        );
      },
    );
  }
}
