import 'package:flutter/material.dart';
import 'package:zakat_jahada/view/ContactUs.dart';

import 'DonationHomePage.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Us"),
        actions: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child:
              MaterialButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DonationHomePage()));
                },
                color: Colors.green,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text("DONATE NOW", style: TextStyle(color: Colors.white)),
                ),
              )
          ),
          SizedBox(width: 10)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 40),
                child: Text(
                    "        The journey began since 2021 with a simple yet profound mission: to spread Islam, extend helping hands to the less fortunate, and foster positive change in communities around the world. Inspired by personal experiences and encounters with various humanitarian challenges, we embarked on a path driven by compassion, empathy, and a commitment to make a difference."
                    "       \n \nOur founder's firsthand experiences, both directly and indirectly, with institutions such as orphanages, care homes for the elderly, rural hospitals, and welfare boards across different countries, laid the foundation for our organization. One poignant moment, in particular, stands out—a trip to the emergency ward in a specialist hospital. It was during this visit, accompanying a friend who had met with an accident, that the stark reality of inadequate resources hit home. The absence of even a single drop of water in the hospital became a catalyst for our unique approach."
                    "          \n \n  Driven by the belief that every donation should directly impact those in need, we established a model focused on accountability, transparency, and personalized engagement. When you contribute to our cause, you become part of a journey that transcends mere financial transactions. Through personalized live streams, we offer donors an intimate glimpse into how their contributions are implemented, ensuring transparency every step of the way."
                    "          \n \n  Unlike traditional approaches, we refrain from posting videos for public consumption. Instead, we invite donors to reach out for a personalized briefing, allowing us to share detailed insights and stories behind each initiative. Videos and images capturing the impact of your donations are shared with donors privately, empowering them to decide on dissemination according to their discretion."
                    "       \n \n Our ultimate goal is twofold: to spread the blessings of giving and to extend a helping hand to those deprived of fundamental support. As believers, we draw inspiration from the Quranic verse:"
                    "       \n \n 'The example of those who spend their wealth in the way of Allah is like a seed [of grain] which grows seven spikes; in each spike is a hundred grains. And Allah multiplies [His reward] for whom He wills. And Allah is all-Encompassing and Knowing.' (Quran 2:261)"
                    "       \n \n Through our collective efforts, we aspire to create a world where the generosity of the human spirit knows no bounds, where the marginalized find solace, and where the blessings of giving reverberate far and wide."
                    "      \n \n Join us on this journey of compassion, empowerment, and transformation. Together, let us spread hope and make a meaningful difference in the lives of those in need."
                    "     \n \n "),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ContactUs()));
                },
                child: const Text(
                  "Contact Us to learn more about our initiatives and how you can contribute to our cause.",
                  style: TextStyle(color: Colors.blue), textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 50)
            ],
          ),
        ),
      ),
    );
  }
}
