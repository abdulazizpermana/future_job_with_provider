import 'package:flutter/material.dart';
import 'package:future_job_with_provider/theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        child: Center(
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
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'About Job',
                        style: JobTextStyle,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/dot.png',
                                  width: 12,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Full Time',
                                  style: ReqTextStyle,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/dot.png',
                                  width: 12,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Start at 8000.000/month',
                                  style: ReqTextStyle,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 8,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Qualification',
                              style: JobTextStyle,
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/dot.png',
                                  width: 12,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Candidate must possess at least a\nBachelor Degree',
                                  style: ReqTextStyle,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/dot.png',
                                  width: 12,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Able to use Microsoft Office and\nGoogle based service',
                                  style: ReqTextStyle,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 8,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Responsibility',
                              style: JobTextStyle,
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/dot.png',
                                  width: 12,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Candidate must possess at least a\nBachelor Degree',
                                  style: ReqTextStyle,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/dot.png',
                                  width: 12,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Able to use Microsoft Office and\nGoogle based service',
                                  style: ReqTextStyle,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/dot.png',
                                  width: 12,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Candidate must possess at least a\nBachelor Degree',
                                  style: ReqTextStyle,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/dot.png',
                                  width: 12,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Able to use Microsoft Office and\nGoogle based service',
                                  style: ReqTextStyle,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/dot.png',
                                  width: 12,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Candidate must possess at least a\nBachelor Degree',
                                  style: ReqTextStyle,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/dot.png',
                                  width: 12,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Able to use Microsoft Office and\nGoogle based service',
                                  style: ReqTextStyle,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 50,
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(66),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Apply',
                              style: buttonTextStyle,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 18,
                    left: 126,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Message Recruiter',
                        style: ReqTextStyle,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
