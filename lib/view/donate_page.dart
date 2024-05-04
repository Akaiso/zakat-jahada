import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:zakat_jahada/view/donate_category_button.dart';

class DonatePage extends StatefulWidget {
  const DonatePage({super.key, required this.categoryButton});

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
  XFile? imagex;
  final picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
            title: Text(
              "Donate to ${widget.categoryButton.categoryName} ",
              style: const TextStyle(fontSize: 20),
            ),
            centerTitle: true),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              Wrap(
                direction: Axis.horizontal,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width < 800
                        ? MediaQuery.of(context).size.width
                        : MediaQuery.of(context).size.width * 0.4,
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text(
                          widget.categoryButton.description,
                          style: const TextStyle(
                              color: Colors.black87, fontSize: 13),
                          textAlign: TextAlign.right,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 40),
                    //height: MediaQuery.of(context).size.height * 1,
                    width: MediaQuery.of(context).size.width < 800
                        ? MediaQuery.of(context).size.width
                        : MediaQuery.of(context).size.width * 0.6,
                    child: Form(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              "Due to low transaction fee, wider reach, prompt delivery, convenient access to funds, global coverage, We accept only BITCOIN(BTC)",
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
                            const SelectableText(
                              textAlign: TextAlign.center,
                              "1qWLpH1zLRcayV7uCKtDZbu8TNXhu3e2R",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(height: 20),
                            SizedBox(
                                height: 38,
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
                                height: 38,
                                child: TextFormField(
                                  controller: controller2,
                                  decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.all(10),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      labelText: "email (optional) ",
                                      labelStyle:
                                          const TextStyle(fontSize: 12)),
                                )),
                            const SizedBox(height: 10),
                            SizedBox(
                                height: 38,
                                child: TextFormField(
                                  controller: controller3,
                                  decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.all(10),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      labelText: "Amount donated (optional) ",
                                      labelStyle:
                                          const TextStyle(fontSize: 12)),
                                )),
                            const SizedBox(height: 10),
                            SizedBox(
                                height: 38,
                                child: TextFormField(
                                  controller: controller4,
                                  decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.all(10),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      labelText:
                                          "Donation category e.g Housing & Shelter (optional)",
                                      labelStyle:
                                          const TextStyle(fontSize: 12)),
                                )),
                            const SizedBox(height: 20),
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
                                    imagex = XFile(pickedFile.path);
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
                                        submitStatus = "UPLOAD RECEIPT";
                                      }
                                    });
                                  },
                                  style: ButtonStyle(
                                    foregroundColor:
                                        MaterialStateProperty.all(Colors.white),
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.green),
                                  ),
                                  child: Text(
                                    submitStatus,
                                    style: const TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
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
