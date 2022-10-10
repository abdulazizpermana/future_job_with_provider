import 'package:flutter/material.dart';
import 'package:future_job_with_provider/widget/custom_list.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme.dart';

class SecondHomePage extends StatelessWidget {
  final String jobTitleHome;
  final String imageUrl;

  SecondHomePage({this.jobTitleHome, this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      child: Container(
                        height: 270,
                        width: double.infinity,
                        child: Image.asset(
                          imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 200,
                        left: 24,
                      ),
                      child: Text(
                        jobTitleHome,
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 230,
                        left: 24,
                      ),
                      child: Text(
                        '120+ Avaliable',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 30,
                      left: 24,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Big Company'),
                        const SizedBox(
                          height: 16,
                        ),
                        Column(
                          children: [
                            CustomList(
                              imageUrl: 'assets/images/ic.png',
                              jobTitle: 'Front End Developer',
                              companyName: 'Google',
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            CustomList(
                              imageUrl: 'assets/images/ic1.png',
                              jobTitle: 'UI Designer',
                              companyName: 'Instagram',
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            CustomList(
                              imageUrl: 'assets/images/ic2.png',
                              jobTitle: 'Back End Developer',
                              companyName: 'Facebook',
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 30,
                      left: 24,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('New Startup'),
                        const SizedBox(
                          height: 16,
                        ),
                        Column(
                          children: [
                            CustomList(
                              imageUrl: 'assets/images/ic.png',
                              jobTitle: 'Front End Developer',
                              companyName: 'Google',
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            CustomList(
                              imageUrl: 'assets/images/ic1.png',
                              jobTitle: 'UI Designer',
                              companyName: 'Instagram',
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            CustomList(
                              imageUrl: 'assets/images/ic2.png',
                              jobTitle: 'Back End Developer',
                              companyName: 'Facebook',
                            ),
                          ],
                        )
                      ],
                    ),
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
