import 'package:flutter/material.dart';
import 'package:future_job_with_provider/theme.dart';

import 'signin_page.dart';

class GetStartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bg.png"), fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 50,
              right: 30,
              left: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Build Your Next\nFuture Career Like\na Master",
                  style: subHeading.copyWith(
                    fontSize: 32,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "18,000 jobs available",
                  style: subHeading.copyWith(
                    fontSize: 14,
                  ),
                ),
                const Spacer(),
                Center(
                  child: Container(
                    height: 45,
                    width: 200,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: const Color(0xffFFFFFF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(66),
                        ),
                      ),
                      child: Text(
                        "Get Started",
                        style: regulartext.copyWith(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Center(
                  child: Container(
                    height: 45,
                    width: 200,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SigninPage()),
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          color: Colors.white,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(66),
                        ),
                      ),
                      child: Text(
                        "Sign In",
                        style: regulartextWhite.copyWith(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
