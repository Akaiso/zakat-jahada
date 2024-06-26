import 'package:flutter/material.dart';

import 'donation_home_page.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  String feedback = "SUBMIT";
  String attached = "";
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerMessage = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Contact Us"),
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
            const SizedBox(width: 10)
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(height: 30),
              Wrap(
                direction: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width < 800
                          ? MediaQuery.of(context).size.width
                          : MediaQuery.of(context).size.width * 0.5,
                      child: Form(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SelectableText(
                                "Thank you for considering being a part of this cause! Whether you have questions about"
                                " our mission, want to learn more about our projects, or need assistance with "
                                "your donation, we're here to help. Please feel free to reach out to us using "
                                "the contact information provided below or send us a mail \" zakat_jahada@outlook.com \" ",
                                style: TextStyle(fontSize: 14),

                            ),
                            const SizedBox(height: 10),
                            const Text("* no field is optional",
                                style: TextStyle(
                                    color: Colors.red, fontSize: 12)),
                            textField(controllerName, "name", 38, 1),
                            const SizedBox(
                              height: 10,
                            ),
                            textField(controllerEmail, "e-mail", 38, 1),
                            const SizedBox(height: 10),
                            const Text(
                              "message",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black54),
                              textAlign: TextAlign.justify,
                            ),
                            textField(controllerMessage, "", 80, 5),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        if (controllerEmail.text.isEmpty ||
                                            controllerMessage.text.isEmpty ||
                                            controllerName.text.isEmpty) {
                                          feedback = "Field(s) empty";
                                        }
                                        if (controllerName.text.isNotEmpty &&
                                            controllerMessage
                                                .text.isNotEmpty &&
                                            controllerName.text.isNotEmpty) {
                                          controllerName.clear();
                                          controllerMessage.clear();
                                          controllerEmail.clear();
                                          feedback = "DONE";
                                          attached =
                                              "Thank you for reaching out";
                                        }
                                      });
                                    },
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.green),
                                    ),
                                    child: Text(feedback, style: const TextStyle(color: Colors.white),),
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Expanded(
                                  child: Text(
                                    attached,
                                    style: const TextStyle(
                                        color: Colors.green, fontSize: 13),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 80),
                  const SizedBox(height: 100),
                  SizedBox(
                    width: MediaQuery.of(context).size.width < 800
                        ? MediaQuery.of(context).size.width
                        : MediaQuery.of(context).size.width * 0.3,
                   // height: MediaQuery.of(context).size.height * 0.7,
                    child: Card(
                      elevation: 20.0,
                      child: Image.asset(
                        "assets/images/helpingHand.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget textField(controller, label, height, maxLine) {
  return SizedBox(
    height: height,
    child: TextFormField(
      maxLines: maxLine,
      controller: controller,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          labelText: label,
          labelStyle: const TextStyle(fontSize: 12)),
    ),
  );
}
