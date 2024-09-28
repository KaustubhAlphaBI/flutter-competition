import 'package:competition/screen/Home.dart';
import 'package:competition/screen/SplashScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';

class AuthGate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (true) {
      return HomeScreen();
    }
    // return StreamBuilder<User?>(
    //   stream: FirebaseAuth.instance.authStateChanges(),
    //   builder: (context, snapshot) {
    //     if (snapshot.connectionState == ConnectionState.waiting) {
    //       return Center(child: CircularProgressIndicator());
    //     } else if (snapshot.hasData) {
    //       return HomeScreen(); // If logged in, go to HomeScreen
    //     } else {
    //       return LoginScreen(); // Else, show the login screen
    //     }
    //   },
    // );
  }
}

class LoginScreen extends StatelessWidget {
  Future<void> _googleSignIn(BuildContext context) async {
    // final googleUser = await GoogleSignIn().signIn();
    // final googleAuth = await googleUser!.authentication;
    // final credential = GoogleAuthProvider.credential(
    //   accessToken: googleAuth.accessToken,
    //   idToken: googleAuth.idToken,
    // );
    // await FirebaseAuth.instance.signInWithCredential(credential);
  }

  Future<void> _otpSignIn(BuildContext context) async {
    // Implement OTP login flow here.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () => _googleSignIn(context),
            child: Text('Login with Google'),
          ),
          ElevatedButton(
            onPressed: () => _otpSignIn(context),
            child: Text('Login with OTP'),
          ),
        ],
      ),
    );
  }
}
