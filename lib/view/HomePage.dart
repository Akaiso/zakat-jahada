import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:zakat_jahada/view/ContactUs.dart';
import 'AboutUs.dart';
import 'DonationHomePage.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Zakat Jahada'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/zakat-banner-1.png',
                fit: BoxFit.cover,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Welcome ; May Allah reward you for visiting here today ...Surah Al-Baqarah (2:261):",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 50),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 300,
                    width: 400,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            AutoSizeText("Our Vision",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                                minFontSize: 15,
                                textAlign: TextAlign.center),
                            SizedBox(height: 10),
                            AutoSizeText(
                              "At Zakat Jahada, we envision a world "
                                  "where every individual has access to basic necessities,"
                                  " opportunities for growth, and the means to achieve their full "
                                  "potential. We believe in the power of collective generosity to "
                                  "transform lives and communities.",
                              style: TextStyle(
                                  fontSize: 17, color: Colors.black54),
                              minFontSize: 15,
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 8,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 100),
                  SizedBox(
                    height: 300,
                    width: 400,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            AutoSizeText("Our Mission ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                                minFontSize: 15,
                                textAlign: TextAlign.center),
                            SizedBox(height: 10),
                            AutoSizeText(
                              'Our mission is to facilitate impactful and transparent '
                                  'giving by connecting donors with meaningful projects that address '
                                  'pressing social needs. Through collaborative efforts, we strive to:',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 17),
                              minFontSize: 15,
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 8,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            ListTile(
              leading: Container(
                height: 10,
                width: 10,
                color: Colors.green,
              ),
              title: const Text("Alleviate Hunger",
                  style: TextStyle(fontSize: 17)),
              subtitle: const Text(
                  "We are committed to providing nutritious meals to those "
                      "facing food insecurity, ensuring that no one goes to bed hungry."),
            ),
            ListTile(
              leading: Container(
                height: 10,
                width: 10,
                color: Colors.green,
              ),
              title: const Text("Build Sustainable Housing: ",
                  style: TextStyle(fontSize: 17)),
              subtitle: const Text(
                  "We aim to create safe and affordable housing solutions for"
                      " marginalized communities, offering them stability and dignity."),
            ),
            ListTile(
              leading: Container(
                height: 10,
                width: 10,
                color: Colors.green,
              ),
              title: const Text("Empower Through Vocational Skills:",
                  style: TextStyle(fontSize: 17)),
              subtitle: const Text(
                  "We seek to empower individuals with the practical skills "
                      "and knowledge necessary to secure sustainable livelihoods, fostering "
                      "independence and self-reliance."),
            ),
            ListTile(
              leading: Container(
                height: 10,
                width: 10,
                color: Colors.green,
              ),
              title: const Text("Foster Digital Inclusion: ",
                  style: TextStyle(fontSize: 17)),
              subtitle: const Text(
                  " We believe in the transformative power of technology. By offering "
                      "training in Information Technology, we equip individuals with the tools they "
                      "need to thrive in the digital age."),
            ),
            ListTile(
              leading: Container(
                height: 10,
                width: 10,
                color: Colors.green,
              ),
              title: const Text("Alleviate Hunger",
                  style: TextStyle(fontSize: 17)),
              subtitle: const Text(
                  "We are committed to providing nutritious meals to those "
                      "facing food insecurity, ensuring that no one goes to bed hungry."),
            ),
            const SizedBox(height: 50),
            const Text(
              "Our Approach",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
            const SizedBox(height: 30),
            ListTile(
              leading: Container(
                height: 10,
                width: 10,
                color: Colors.green,
              ),
              title:
              const Text("Transparency: ", style: TextStyle(fontSize: 17)),
              subtitle: const Text(
                  "We are committed to transparency and accountability in "
                      "all our operations. Donors can trust that their contributions are making a "
                      "tangible difference in the lives of those we serve."),
            ),
            ListTile(
              leading: Container(
                height: 10,
                width: 10,
                color: Colors.green,
              ),
              title: const Text("Customized Solutions: ",
                  style: TextStyle(fontSize: 17)),
              subtitle: const Text(
                  "We understand that each community has unique needs and challenges. "
                      "That's why we work closely with donors to tailor our projects to specific "
                      "instructions, ensuring that their generosity has a direct and meaningful impact."),
            ),
            ListTile(
              leading: Container(
                height: 10,
                width: 10,
                color: Colors.green,
              ),
              title: const Text("Sustainability: ",
                  style: TextStyle(fontSize: 17)),
              subtitle: const Text(
                  "We prioritize sustainable solutions that create lasting change. "
                      "By investing in education, infrastructure, and capacity building, we empower "
                      "communities to break the cycle of poverty and build a better future for generations to come"),
            ),
            const SizedBox(height: 40),
            const Text(
              "Join Us",
              style: TextStyle(fontSize: 35),
            ),
            const SizedBox(
              height: 100,
              width: 300,
              child: Text(
                'Together, we can create a world where compassion knows no '
                    'bounds and every individual has the opportunity to thrive. '
                    'Join us in our mission to make a difference, one donation at a time.',
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DonationHomePage()));
              },
              style: ButtonStyle(
                padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
              ),
              child: const Text(
                "CLICK HERE TO DONATE NOW",
                style: TextStyle(fontSize: 25),
              ),
            ),
            const SizedBox(height: 10),
            const Text("Big or small, your donations can make a significant impact for those who need it most.", style: TextStyle(fontSize: 12, color: Colors.red)),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            ListTile(
              title: const Text(
                'About Us',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutUs()));
              },
            ),
            // ListTile(
            //   title: const Text(
            //     'Projects',
            //     style: TextStyle(
            //       fontSize: 20.0,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            //   onTap: () {
            //     // Navigate to Projects page
            //   },
            // ),
            ListTile(
              title: const Text(
                'Contact Us',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ContactUs()));
              },
            ),
            const SizedBox(height: 20.0),
            Container(
              color: Colors.grey[200],
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'Copyright © 2024 Muslim Community. All Rights Reserved.',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

