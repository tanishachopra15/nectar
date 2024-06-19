import 'package:flutter/material.dart';
import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/app_provider.dart';
import 'package:nectar/core/app_router.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: 'https://rirjfepqqrafebdehefw.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJpcmpmZXBxcXJhZmViZGVoZWZ3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTQzMDAxMTgsImV4cCI6MjAyOTg3NjExOH0.exJTQEsTAjPzsBKHKtu-9P3MzMV-j-onbPHMPPBM7KM',
  );
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
