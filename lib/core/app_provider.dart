import 'package:flutter/material.dart';
import 'package:nectar/core/viewmodel/cart_view_model.dart';
import 'package:nectar/core/viewmodel/login_view_model.dart';
import 'package:nectar/view/home/home_view_model.dart';
import 'package:provider/provider.dart';

class AppProvider extends StatelessWidget {
  final Widget child;
  const AppProvider({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartViewModel()),
        ChangeNotifierProvider(create: (_) => LoginViewModel()),
        ChangeNotifierProvider(create: (_) => HomeViewModel())
      ],
      child: child,
    );
  }
}
