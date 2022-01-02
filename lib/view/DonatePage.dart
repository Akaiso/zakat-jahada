import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:zakat_jahada/view/DonationCategoryButton.dart';

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
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Text(
                              widget.categoryButton.description,
                              style: const TextStyle(
                                  color: Colors.black87, fontSize: 13),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ],
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
