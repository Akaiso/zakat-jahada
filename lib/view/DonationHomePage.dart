import 'package:flutter/material.dart';
import 'DonationCategoryButton.dart';

class DonationHomePage extends StatelessWidget {
  List<String> category = [
    "Mosque building projects",
    'Education and empowerment',
    'Sick and handicapped',
    'Housing, Feeding and clothing',
    'Pregnant and nursing mothers',
    'Prisoners',
    "Growth and Development"
  ];

  String? categoryLoop() {
    String? index;
    for (int i = 0; i < category.length; i++) {
      index = category[i];
    }
    return index;
  }

  @override
  Widget build(BuildContext context) {
    categoryLoop();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Donation Category'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DonationCategoryButton(
              categoryName: category[0],
            ),
            DonationCategoryButton(
              categoryName: category[1],
            ),
            DonationCategoryButton(
              categoryName: category[2],
            ),
            DonationCategoryButton(
              categoryName: category[3],
            ),
            DonationCategoryButton(
              categoryName: category[4],
            ),
            DonationCategoryButton(
              categoryName: category[5],
            ),
            DonationCategoryButton(
              categoryName: category[6],
            ),
          ],
        ),
      ),
    );
  }
}
