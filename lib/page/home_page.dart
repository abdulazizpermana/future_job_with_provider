import 'package:flutter/material.dart';
import 'package:future_job_with_provider/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 24,
            right: 24,
          ),
          child: Container(
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Howdy",
                      style: tittleTextStyle,
                    ),
                    Text(
                      "Jason Powdel",
                      style: subtittleTextStyle,
                    )
                  ],
                ),
                const Spacer(),
                Image.asset(
                  "assets/images/user_pic.png",
                  width: 57,
                  height: 57,
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: Column(
        children: [
          header(),
        ],
      ),
    );
  }
}
