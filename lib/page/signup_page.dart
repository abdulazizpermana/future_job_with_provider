import 'package:flutter/material.dart';
import 'package:future_job_with_provider/models/user_model.dart';
import 'package:future_job_with_provider/page/home_page.dart';
import 'package:future_job_with_provider/page/signin_page.dart';
import 'package:future_job_with_provider/providers/auth_provider.dart';
import 'package:future_job_with_provider/providers/user_provider.dart';
import 'package:provider/provider.dart';

import '../theme.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController goalController = TextEditingController();

  bool isLoading = false;

  bool isUploaded = false;
  final _formKey = GlobalKey<FormState>();

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

    Widget uploadedimage() {
      return Center(
        child: InkWell(
          onTap: () {
            setState(() {
              isUploaded = !isUploaded;
            });
          },
          child: Column(
            children: [
              Image.asset(
                "assets/images/icon.png",
                width: 100,
                height: 100,
              ),
            ],
          ),
        ),
      );
    }

    Widget showImage() {
      return Center(
        child: InkWell(
          onTap: () {
            setState(() {
              isUploaded = !isUploaded;
            });
          },
          child: Column(
            children: [
              Image.asset(
                "assets/images/user_pic.png",
                width: 100,
                height: 100,
              ),
            ],
          ),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
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
                  "Sign Up",
                  style: tittleTextStyle,
                ),
                Text(
                  "Begin New Journey",
                  style: subtittleTextStyle,
                ),
                const SizedBox(
                  height: 40,
                ),
                isUploaded ? showImage() : uploadedimage(),
                const SizedBox(
                  height: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Full Name",
                      style: tittleTextStyle,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Form(
                      key: _formKey,
                      child: TextFormField(
                        controller: nameController,
                        decoration: InputDecoration(
                          fillColor: const Color(0xffF1F0F5),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(66),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(66),
                              borderSide: BorderSide.none),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Email",
                      style: tittleTextStyle,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      controller: emailController,
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
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
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
                      controller: passwordController,
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
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Your Goal",
                      style: tittleTextStyle,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      controller: goalController,
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
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
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
                                if (nameController.text.isEmpty ||
                                    passwordController.text.isEmpty ||
                                    emailController.text.isEmpty ||
                                    goalController.text.isEmpty) {
                                  showError('Semua field harus diisi');
                                } else {
                                  setState(() {
                                    isLoading = true;
                                  });
                                  UserModel user = await authProvider.register(
                                    emailController.text,
                                    passwordController.text,
                                    nameController.text,
                                    goalController.text,
                                  );

                                  setState(() {
                                    isLoading = false;
                                  });

                                  if (user == null) {
                                    showError('email sudah terdaftar');
                                  } else {
                                    userProvider.user = user;
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const HomePage(),
                                      ),
                                    );
                                  }

                                  if (_formKey.currentState.validate()) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text('Processing Data')),
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
                            MaterialPageRoute(
                              builder: (context) => SigninPage(),
                            ),
                          );
                        },
                        child: Text(
                          "Back to Sign In",
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
      ),
    );
  }
}
