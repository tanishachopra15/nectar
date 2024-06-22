import 'dart:developer';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/app_router.dart';
import 'package:nectar/core/app_router.gr.dart';
import 'package:nectar/core/service/auth_service.dart';

class LoginViewModel extends ChangeNotifier {
  // TextEditingController phone = TextEditingController();
  TextEditingController zoneController = TextEditingController();
  TextEditingController areaController = TextEditingController();

  Country? _country;
  String _phoneNumber = '';
  String _otp = '';
  String _zoneName = '';
  String _areaName = '';

  Country? get country => _country;
  String get phoneNumber => _phoneNumber;
  String get otp => _otp;
  String get zoneName => _zoneName;
  String get areaName => _areaName;

  final _route = locator<AppRouter>();
  final _auh = locator<AuthService>();

  List<String> zones = ['Zone 1', 'Zone 2', 'Zone 3', 'Zone 4', 'Zone 5'];
  List<String> areas = ['Area 1', 'Area 2', 'Area 3', 'Area 4', 'Area 5'];

  void setCountry(Country country) {
    _country = country;
    notifyListeners();
  }

  void setPhoneNumber(String phoneNumber) {
    _phoneNumber = phoneNumber;
    log(phoneNumber);
    notifyListeners();
  }

  void setOtp(String otp) {
    _otp = otp;
    notifyListeners();
  }

  void setZones(String zoneName) {
    _zoneName = zoneName;
    zoneController.text = zoneName;
    notifyListeners();
  }

  void setAreas(String areaName) {
    _areaName = areaName;
    areaController.text = areaName;
    notifyListeners();
  }

  Future<void> signInWithOtp() async {
    try {
      await _auh.signInWithOtp(country!.phoneCode + _phoneNumber);
      navigateToPhone();
    } on Exception catch (e) {
      log(e.toString());
    }
  }

  Future<void> verifyWithOtp() async {
    try {
      await _auh.verifyWithOtp(country!.phoneCode + _phoneNumber, _otp);
      navigateToLocation();
    } on Exception catch (e) {
      log(e.toString());
    }
  }

  void navigateToPhone() {
    print('navigate to phone');
    _route.push(PhoneRoute());
  }

  void navigateToVerification() {
    _route.push(VerificationRoute());
  }

  void navigateToLocation() {
    _route.push(LocationRoute());
  }

  // void navigateToProductDetails() {
  //   print('navigate to product details');
  //   _route.push(const ProductDetailRoute());
  // }

  // void navigateToExplore() {
  //   print('navigate to Explore');
  //   _route.push(const ExploreRoute());
  // }

  // void navigateToBreverages() {
  //   print('navigate to breverages');
  //   _route.push(const BeveragesRoute());
  // }

  // void navigateToSearch() {
  //   print('navigate to search');
  //   _route.push(const SearchRoute());
  // }

  // void navigateToAccount() {
  //   print('navigate to account');
  //   _route.push(const AccountRoute());
  // }

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
    if (value.length != 6) {
      return 'Invalid code';
    }
    return null;
  }

  String? validateZone(String? value) {
    if (value == null || value.isEmpty) {
      return 'Zone is required';
    }
    if (!zones.any((e) => e.toLowerCase().contains(value.toLowerCase()))) {
      return 'Invalid zone';
    }
    return null;
  }

  String? validateArea(String? value) {
    if (value == null || value.isEmpty) {
      return 'Area is required';
    }
    if (!areas.any((e) => e.toLowerCase().contains(value.toLowerCase()))) {
      return 'Invalid area';
    }
    return null;
  }
}
