import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:zakat_jahada/view/DonationCategoryButton.dart';

import 'HomePage.dart';

class DonatePage extends StatefulWidget {
  DonatePage({Key? key, required this.categoryButton}) : super(key: key) {}

  final DonationCategoryButton categoryButton;

  @override
  State<DonatePage> createState() => _DonatePageState();
}

class _DonatePageState extends State<DonatePage> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();

  String imageUpload = "assets/images/upload_image.png";
  String submitStatus = "SUBMIT";
  String receiptStatus = "Upload Receipt";
  Color blueColor = Colors.blue;
  bool imageSelected = false;
  XFile? _image;
  final picker = ImagePicker();

  Widget _buildImage() {
    if (_image == null) {
      return const Padding(
        padding: EdgeInsets.fromLTRB(1, 1, 1, 1),
        child: Icon(
          Icons.add,
          color: Colors.grey,
        ),
      );
    } else {
      return Text(_image!.path);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            AppBar(
                title: Text(
                  "Donate to ${widget.categoryButton.categoryName} ",
                  style: TextStyle(fontSize: 20),
                ),
                centerTitle: true),
            const SizedBox(height: 40),
            Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: const Text(
                        "There are several reasons why donations are crucial for building "
                        "houses for homeless and needy Muslim brothers and sisters, and these reasons "
                        "are often aligned with the principles of compassion, generosity, and social "
                        "responsibility upheld in Islam. Here are some key reasons, along with Quranic "
                        "verses to support them: Fulfilling the Duty of Charity (Zakat) and Social Responsibility: "
                        "Quranic Verse: 'And they give food in spite of love for it to the needy, the orphan, "
                        "and the captive...' (Quran 76:8)Islam emphasizes the duty of giving charity (Zakat) to "
                        "those in need. Providing shelter to the homeless is a form of fulfilling this obligation and "
                        "upholding social responsibility.Ensuring Human Dignity and Well-being:"
                        "Quranic Verse: 'And those who, before them, had homes and had adopted the Faith, "
                        "love those who emigrate to them, and have no jealousy in their breasts for that which "
                        "they have been given (from the booty of Bani An-Nadir), and give them (emigrants) preference "
                        "over themselves, even though they were in need of that...' (Quran 59:9)"
                        "Providing shelter is essential for preserving human dignity and ensuring the well-being of "
                        "individuals and families who are homeless or living in inadequate housing conditions."
                        "Supporting Vulnerable Members of the Community:"
                        "Quranic Verse: 'The example of those who spend their wealth in the way of Allah is like a "
                        "seed [of grain] which grows seven spikes; in each spike is a hundred grains...' (Quran 2:261)"
                        "Donations to build houses for the homeless support vulnerable members of the community, "
                        "reflecting the Islamic principle of compassion and solidarity with those in need."
                        "Promoting Social Justice and Equity:"
                        "Quranic Verse: 'Indeed, Allah orders justice and good conduct and giving to relatives and "
                        "forbids immorality and bad conduct and oppression. He admonishes you that perhaps you will be "
                        "reminded.' (Quran 16:90)"
                        "Building houses for the homeless promotes social justice and equity by providing equal access "
                        "to safe and adequate housing for all members of society."
                        "Investing in the Future Generations:"
                        "Quranic Verse: 'And those who say, 'Our Lord, grant us from among our wives and offspring comfort to our eyes and make us an example for the righteous.'' (Quran 25:74)"
                        "Providing stable housing for families ensures a conducive environment for raising children, thereby investing in the future generations and contributing to the development of strong and resilient communities."
                        "By donating to build houses for homeless and needy Muslim brothers and sisters, individuals can fulfill their religious obligations, support vulnerable members of the community, promote social justice, "
                        "and invest in a brighter future for all.",
                        style: TextStyle(color: Colors.black87, fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Form(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              "Due to low transaction fee, prompt delivery, convenient access to funds, global coverage, We accept only BITCOIN(BTC)",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black54),
                              textAlign: TextAlign.center,
                            ),
                            const Text(
                              "We accept only BITCOIN(BTC)",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green),
                            ),
                            const Text(
                              "copy the Btc address below to make donation",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black54),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "1qWLpH1zLRcayV7uCKtDZbu8TNXhu3e2R",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(height: 20),
                            SizedBox(
                                height: 35,
                                child: TextFormField(
                                  controller: controller1,
                                  decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.all(10),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      labelText: "name: (optional) ",
                                      labelStyle:
                                          const TextStyle(fontSize: 12)),
                                )),
                            const SizedBox(height: 10),
                            SizedBox(
                                height: 35,
                                child: TextFormField(
                                  controller: controller2,
                                  decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.all(10),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      labelText: "email: (optional) ",
                                      labelStyle:
                                          const TextStyle(fontSize: 12)),
                                )),
                            const SizedBox(height: 10),
                            SizedBox(
                                height: 35,
                                child: TextFormField(
                                  controller: controller3,
                                  decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.all(10),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      labelText: "Amount donated ",
                                      labelStyle:
                                          const TextStyle(fontSize: 12)),
                                )),
                            const SizedBox(height: 10),
                            SizedBox(
                                height: 35,
                                child: TextFormField(
                                  controller: controller4,
                                  decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.all(10),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      labelText:
                                          "Donation category e.g Housing & Shelter ",
                                      labelStyle:
                                          const TextStyle(fontSize: 12)),
                                )),
                            const SizedBox(height: 10),
                            const SizedBox(height: 10),
                            OutlinedButton(
                              child: SizedBox(
                                height: 35,
                                width: 200,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(imageUpload,
                                        height: 30,
                                        width: 30,
                                        color: blueColor),
                                    const SizedBox(width: 10),
                                    Text(receiptStatus,
                                        style: TextStyle(
                                            fontSize: 15, color: blueColor))
                                  ],
                                ),
                              ),
                              onPressed: () async {
                                final pickedFile = await picker.pickImage(
                                    source: ImageSource.gallery);
                                setState(() {
                                  if (pickedFile != null) {
                                    _image = XFile(pickedFile.path);
                                    imageUpload =
                                        "assets/images/successful.png";
                                    receiptStatus = "Receipt selected";
                                    blueColor = Colors.green;
                                    imageSelected = true;
                                  }
                                });
                              },
                            ),
                            const SizedBox(height: 30),
                            SizedBox(
                              height: 35,
                              child: Center(
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      if (imageSelected == true) {
                                        submitStatus = "DONE";
                                        controller1.clear();
                                        controller2.clear();
                                        controller3.clear();
                                        controller4.clear();
                                      } else {
                                        submitStatus = "SELECT IMAGE";
                                      }
                                    });
                                  },
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.green),
                                  ),
                                  child: Text(
                                    submitStatus,
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
