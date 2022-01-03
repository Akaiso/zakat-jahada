import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

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
        ),
        body: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30),
              child: Center(
                child: Wrap(
                  direction: Axis.horizontal,
                  children: [
                    SizedBox(
                     // height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Form(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              "Thank you for considering being a part of this cause! Whether you have questions about"
                              " our mission, want to learn more about our projects, or need assistance with "
                              "your donation, we're here to help. Please feel free to reach out to us using "
                              "the contact information provided below.",
                              style: TextStyle(fontSize: 14),
                            ),
                            const SizedBox(height: 10),
                            const Text("* no field is optional",
                                style: TextStyle(color: Colors.red, fontSize: 12)),
                            textField(controllerName, "name", 35, 1),
                            const SizedBox(
                              height: 10,
                            ),
                            textField(controllerEmail, "e-mail", 35, 1),
                            const SizedBox(height: 10),
                            const Text(
                              "message",
                              style: TextStyle(fontSize: 12, color: Colors.black54),
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
                                            controllerMessage.text.isNotEmpty &&
                                            controllerName.text.isNotEmpty) {
                                          controllerName.clear();
                                          controllerMessage.clear();
                                          controllerEmail.clear();
                                          feedback = "DONE";
                                          attached =
                                              "Thank you for reaching out to us, our support team will respond soon";
                                        }
                                      });
                                    },
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(Colors.green),
                                    ),
                                    child: Text(feedback),
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
                    const SizedBox(width: 100),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
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
              ),
            ),
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
