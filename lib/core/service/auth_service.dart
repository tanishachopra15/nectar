import 'dart:developer';

import 'package:nectar/core/supabase.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService {
  Future<void> signInWithOtp(String phoneNumber) async {
    log('sign in with otp');
    log(phoneNumber);

    await supabase.auth.signInWithOtp(
      phone: phoneNumber,
    );
  }

  Future<void> verifyWithOtp(String otp, String phoneNumber) async {
    print('verify with otp');

    await supabase.auth.verifyOTP(
      type: OtpType.signup,
      token: otp,
      phone: phoneNumber,
    );
  }
}
