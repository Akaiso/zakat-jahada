import 'package:flutter/material.dart';
import '../data/ContentData.dart';
import 'DonationCategoryButton.dart';

class DonationHomePage extends StatelessWidget {
  List<String> category = [
    "Mosque building projects",
    'Education and empowerment',
    'Sick and handicapped',
    'Housing, Feeding and clothing',
    'Pregnant women, nursing mothers and widows',
    'Prisoners',
    "Growth and Development"
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Select Donation Category'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                DonationCategoryButton(
                    categoryName: category[0],
                    description: donationCategoryDescription[0]),
                DonationCategoryButton(
                    categoryName: category[1],
                    description: donationCategoryDescription[1]),
                DonationCategoryButton(
                    categoryName: category[2],
                    description: donationCategoryDescription[2]),
                DonationCategoryButton(
                    categoryName: category[3],
                    description: donationCategoryDescription[3]),
                DonationCategoryButton(
                    categoryName: category[4],
                    description: donationCategoryDescription[4]),
                DonationCategoryButton(
                    categoryName: category[5],
                    description: donationCategoryDescription[5]),
                DonationCategoryButton(
                    categoryName: category[6],
                    description: donationCategoryDescription[6]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
