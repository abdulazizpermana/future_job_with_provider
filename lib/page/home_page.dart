import 'package:flutter/material.dart';
import 'package:future_job_with_provider/theme.dart';
import 'package:future_job_with_provider/widget/custom_list.dart';
import 'package:future_job_with_provider/widget/job_cart.dart';
import 'package:google_fonts/google_fonts.dart';

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

    Widget body() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                "Hot Categories",
                style: GoogleFonts.poppins(
                  color: Color(0xff272c2f),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Row(
                  children: [
                    JobCard(
                      text: 'Website Developer',
                      imageUrl: 'assets/images/card_category.png',
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    JobCard(
                      text: 'Flutter Developer',
                      imageUrl: 'assets/images/bbg.png',
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    JobCard(
                      text: 'Front End Developer',
                      imageUrl: 'assets/images/bgg.png',
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    JobCard(
                      text: 'Back End Developer',
                      imageUrl: 'assets/images/bgggg.png',
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    JobCard(
                      text: 'Mobile Developer',
                      imageUrl: 'assets/images/bbg.png',
                    ),
                    const SizedBox(
                      width: 16,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'Just Posted',
                style: GoogleFonts.poppins(
                  color: const Color(0xff272c2f),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                top: 16,
              ),
              child: CustomList(
                imageUrl: 'assets/images/ic.png',
                jobTitle: 'Front End Developer',
                companyName: 'Google',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                top: 16,
              ),
              child: CustomList(
                imageUrl: 'assets/images/ic1.png',
                jobTitle: 'UI Designer',
                companyName: 'Instagram',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                top: 16,
              ),
              child: CustomList(
                imageUrl: 'assets/images/ic2.png',
                jobTitle: 'Back End Developer',
                companyName: 'Facebook',
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(
          top: 30,
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.black,
          currentIndex: 0,
          iconSize: 24,
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/nav.png'),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/nav1.png'),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/nav3.png'),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/nav4.png'),
              ),
              label: '',
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          header(),
          body(),
        ],
      ),
    );
  }
}
