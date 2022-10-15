import 'package:flutter/material.dart';
import 'package:future_job_with_provider/page/home_page.dart';
import 'package:future_job_with_provider/page/signup_page.dart';
import 'package:future_job_with_provider/providers/auth_provider.dart';
import 'package:future_job_with_provider/providers/user_provider.dart';
import 'package:future_job_with_provider/theme.dart';
import 'package:email_validator/email_validator.dart';
import 'package:provider/provider.dart';

import '../models/user_model.dart';

class SigninPage extends StatefulWidget {
  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  bool isEmailValid = true;

  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    var authProvider = Provider.of<AuthProvider>(context);
    var userProvider = Provider.of<UserProvider>(context);

    void showError(String message) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          content: Text(message),
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 70,
            left: 24,
            right: 24,
          ),
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
                  TextFormField(
                    controller: emailController,
                    onChanged: (value) {
                      print(value);
                      bool isValid = EmailValidator.validate(value);
                      print(isValid);
                      if (isValid) {
                        setState(() {
                          isEmailValid = true;
                        });
                      } else {
                        setState(() {
                          isEmailValid = false;
                        });
                      }
                    },
                    decoration: InputDecoration(
                      fillColor: const Color(0xffF1F0F5),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(66),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(66),
                        borderSide: BorderSide(
                          color: isEmailValid
                              ? const Color(0xff4141a4)
                              : const Color(0xffDA1212),
                        ),
                      ),
                    ),
                    style: TextStyle(
                      color: isEmailValid
                          ? const Color(0xff4141a4)
                          : const Color(0xffDA1212),
                    ),
                  ),
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
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: const Color(0xffF1F0F5),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(66),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(66),
                        borderSide: const BorderSide(
                          color: Color(0xff4141a4),
                        ),
                      ),
                      hintText: '',
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: 400,
                    height: 45,
                    child: isLoading
                        ? Center(
                            child: CircularProgressIndicator(),
                          )
                        : TextButton(
                            onPressed: () async {
                              if (emailController.text.isEmpty ||
                                  passwordController.text.isEmpty) {
                                showError('Semua field harus diisi');
                              } else {
                                setState(() {
                                  isLoading = true;
                                });
                                UserModel user = await authProvider.login(
                                  emailController.text,
                                  passwordController.text,
                                );

                                setState(() {
                                  isLoading = false;
                                });

                                if (user == null) {
                                  showError('email password salah');
                                } else {
                                  userProvider.user = user;
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const HomePage(),
                                    ),
                                  );
                                }
                              }
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(66),
                              ),
                            ),
                            child: Text(
                              "Sign Up",
                              style: buttonTextStyle,
                            ),
                          ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpPage()),
                        );
                      },
                      child: Text(
                        "Create New Account",
                        style: tittleTextStyle,
                      ),
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
