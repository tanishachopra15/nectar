import 'package:flutter/material.dart';
import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/app_provider.dart';
import 'package:nectar/core/app_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  setuplocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return AppProvider(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xffFCFCFC),
          primaryColor: const Color(0xff53B175),
          textTheme: const TextTheme(
            headlineLarge: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
            labelMedium: TextStyle(fontSize: 18, color: Color(0xffFFF9FF)),
            labelSmall: TextStyle(
              fontSize: 14,
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
