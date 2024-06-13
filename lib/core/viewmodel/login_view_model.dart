import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/app_router.dart';
import 'package:nectar/core/app_router.gr.dart';

class LoginViewModel extends ChangeNotifier {
  // TextEditingController phone = TextEditingController();
  Country? _country;
  String? _phonenumber;

  Country? get country => _country;
  String? get phonenumber => _phonenumber;
  final _route = locator<AppRouter>();

  void setCountry(Country country) {
    _country = country;
    notifyListeners();
  }

  void setPhoneNumber(String phonenumber) {
    _phonenumber = phonenumber;
    notifyListeners();
  }

  void navigateToPhone() {
    print('navigate to phone');
    _route.push(const PhoneRoute());
  }

  String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required';
    }
    if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
      return 'Invalid phone number';
    }
    return null;
  }

  String? validateVerification(String? value) {
    if (value == null || value.isEmpty) {
      return 'Code is required';
    }
    if (value.length != 4) {
      return 'Invalid code';
    }
    return null;
  }

  void navigateToVerification() {
    _route.push(const VerificationRoute());
  }

  void navigateToLocation() {
    _route.push(const LocationRoute());
  }
}
