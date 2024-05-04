import 'package:flutter/material.dart';
import 'donate_page.dart';

class DonationCategoryButton extends StatelessWidget {
  final String categoryName;
  final String description;

  const DonationCategoryButton(
      {super.key, required this.categoryName, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DonatePage(
                        categoryButton: DonationCategoryButton(
                            categoryName: categoryName,
                            description: description),
                      )));
          // Implement donation process for the selected category
        },
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(
            const EdgeInsets.all(16.0),
          ),
        ),
        child: Text(
          categoryName,
          style: const TextStyle(
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}
