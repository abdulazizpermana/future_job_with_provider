import 'package:flutter/material.dart';
import 'package:future_job_with_provider/page/getstarted_page.dart';
import 'package:future_job_with_provider/page/home_page.dart';
import 'package:future_job_with_provider/page/signin_page.dart';
import 'package:future_job_with_provider/page/signup_page.dart';
import 'package:future_job_with_provider/page/splash_page.dart';
import 'package:future_job_with_provider/providers/auth_provider.dart';
import 'package:future_job_with_provider/providers/user_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider<UserProvider>(
          create: (context) => UserProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/onboarding': (context) => GetStartedPage(),
          '/signIn': (context) => SigninPage(),
          '/signUp': (context) => SignUpPage(),
          '/home': (context) => HomePage(),
        },
      ),
    );
  }
}
