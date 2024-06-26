import 'dart:developer';
import 'package:nectar/core/supabase.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
// import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  final user = supabase.auth.currentUser;

  Future<void> signInWithOtp(String phoneNumber) async {
    log('sign in with otp');
    log(phoneNumber);

    await supabase.auth.signInWithPassword(
      email: "tanishac768@gmail.com",
      password: '1504'
    );
  }

  Future<void> verifyWithOtp(String otp, String phoneNumber) async {
    print('verify with otp');
    log(otp);
    log(phoneNumber);

    await supabase.auth.verifyOTP(
      type: OtpType.sms,
      token: otp,
      phone: phoneNumber,
    );
  }

  Future<void> signOut() async {
    await supabase.auth.signOut();
  }

  Future<void> addLocation(String zone, String area) async {
    await supabase
        .from('users')
        .update({'zone': zone, 'area': area, 'updated_at': DateTime.now()}).eq(
            'id', user!.id);
  }

  // Future<AuthResponse?> googleSignIn() async {
  //   const webClientId =
  //       '403691532014-h8epepbu85t0f99p2h6kel9uqgt4qltc.apps.googleusercontent.com';

  //   const androidClientId =
  //       '403691532014-259bb9s8lcsehi5vlsluvro9cgo9slpg.apps.googleusercontent.com';

  //   final GoogleSignIn googleSignIn = GoogleSignIn(
  //     clientId: webClientId
  //     // serverClientId: "403691532014-h8epepbu85t0f99p2h6kel9uqgt4qltc.apps.googleusercontent.com",
  //   //   scopes: [
  //   //   "email",
  //   //   "https://www.googleapis.com/auth/contacts.readonly"
  //   // ]
  //   );

  //   try {
  //     final googleUser = await googleSignIn.signIn();
  //     final googleAuth = await googleUser!.authentication;
  //     final accessToken = googleAuth.accessToken;
  //     log(googleUser.toString());
  //     final idToken = googleAuth.idToken;
  //     // return null;
  //     log("This is the user data" + googleSignIn.currentUser.toString());

  //     log("Access Token ${ accessToken?.toString() ?? ""}");
  //     log("Id Token ${idToken?.toString() ?? ""}");

  //     if (accessToken == null) {
  //       throw 'No Access Token found.';
  //     }
  //     if (idToken == null) {
  //       throw 'No ID Token found.';
  //     }

  //     var res = await supabase.auth.signInWithIdToken(
  //       provider: OAuthProvider.google,
  //       idToken: idToken,
  //       accessToken: accessToken,
  //     );
  //     return res;
  //   } catch (e) {
  //     throw Exception(e.toString());
  //   }
  // }
}
