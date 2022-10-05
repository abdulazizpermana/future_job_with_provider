import 'package:flutter/material.dart';

import '../page/detail_page.dart';
import '../theme.dart';

class CustomList extends StatelessWidget {
  final String jobTitle;
  final String imageUrl;
  final String companyName;

  CustomList({this.jobTitle, this.imageUrl, this.companyName});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const DetailPage(),
          ),
        );
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
            width: 45,
            height: 45,
          ),
          const SizedBox(
            width: 27,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  jobTitle,
                  style: JobTextStyle,
                ),
                Text(
                  companyName,
                  style: CompanyTextStyle,
                ),
                const SizedBox(
                  height: 18,
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
