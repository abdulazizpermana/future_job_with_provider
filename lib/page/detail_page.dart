import 'package:flutter/material.dart';
import 'package:future_job_with_provider/theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              Image.asset(
                'assets/images/ic.png',
                width: 60,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Front End Developer',
                style: JobTextStyle,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Google Inc. California',
                style: CompanyTextStyle,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'About Job',
                    style: JobTextStyle,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
