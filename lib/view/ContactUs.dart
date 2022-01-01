import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

TextEditingController controllerName = TextEditingController();
TextEditingController controllerEmail = TextEditingController();
TextEditingController controllerMessage = TextEditingController();

String feedback = "SUBMIT";
String attached = "";
Color submitButton = Colors.blue;

class _ContactUsState extends State<ContactUs> {
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
            child: Row(
              children: [
                SizedBox(
                  height: 300,
                  width: 500,
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                            ElevatedButton(
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
                            const SizedBox(width: 20),
                            Text(
                              attached,
                              style: const TextStyle(
                                  color: Colors.green, fontSize: 13),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 50),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: Image.asset(
                    "assets/images/helpingHand.png",
                    fit: BoxFit.cover,
                  ),
                )
              ],
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
