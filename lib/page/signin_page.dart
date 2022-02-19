import 'package:flutter/material.dart';
import 'package:future_job_with_provider/theme.dart';

import '../widget/custom_botton.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 70,
          left: 24,
          right: 24,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sign In",
                style: tittleTextStyle,
              ),
              Text(
                "Build Your Career",
                style: subtittleTextStyle,
              ),
              const SizedBox(
                height: 40,
              ),
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/image_page.png",
                      width: 262,
                      height: 240,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style: tittleTextStyle,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomTextForm(),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Password",
                    style: tittleTextStyle,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomTextForm(),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: 400,
                    height: 45,
                    child: TextButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => const SigninPage(),
                        //   ),
                        // );
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(66),
                        ),
                      ),
                      child: Text(
                        "Sign In",
                        style: buttonTextStyle,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: Text(
                      "Create New Account",
                      style: tittleTextStyle,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
