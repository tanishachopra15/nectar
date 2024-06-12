import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginViewModel extends ChangeNotifier {
  TextEditingController phone = TextEditingController();
  Country? _country;
  String? _phonenumber;

  Country? get country => _country;
  String? get phonenumber => _phonenumber;

  void setCountry(Country country) {
    _country = country;
    notifyListeners();
  }

  void setPhoneNumber(String phonenumber) {
    _phonenumber = phonenumber;
    notifyListeners();
  }
}
