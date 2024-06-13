import 'package:flutter/material.dart';
import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/app_provider.dart';
import 'package:nectar/core/app_router.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  setuplocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final appRouter = locator<AppRouter>();
    return AppProvider(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xffFCFCFC),
          appBarTheme: const AppBarTheme(
            color: Color(0xffFCFCFC),
          ),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
              backgroundColor: Color(0xff53B175)),
          primaryColor: const Color(0xff53B175),
          textTheme: const TextTheme(
            headlineMedium: TextStyle(
                fontSize: 26,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w600),
            headlineSmall: TextStyle(
                fontSize: 16,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w600),
            labelMedium: TextStyle(
              fontSize: 18,
              fontFamily: 'Gilroy',
              color: Color(0xffFFF9FF),
            ),
            labelSmall: TextStyle(
              fontSize: 14,
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.w500,
              color: Color(0xff828282),
            ),
          ),
        ),
        routerConfig: appRouter.config(),
      ),
    );
  }
}
