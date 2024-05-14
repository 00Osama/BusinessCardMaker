import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:businesscardmaker/pages/businesscard.dart';
import 'package:businesscardmaker/customwidgets/mytextfield.dart';
import 'package:businesscardmaker/customwidgets/uploadcheck.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController jobController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  XFile? image;
  final ImagePicker _imagePicker = ImagePicker();

  Future<void> _uploadImage() async {
    final pickedImage =
        await _imagePicker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(
        () {
          image = pickedImage;
          uploadAware = const UploadCheck();
        },
      );
    }
  }

  Widget uploadAware = const Text('Upload Your Image');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E6E4),
      body: Center(
        child: ListView(
          children: [
            const SizedBox(
              height: 40,
            ),
            Image.asset(
              'images/credit-card.png',
              height: 200,
              width: 100,
            ),
            const SizedBox(
              height: 1,
            ),
            const Center(
              child: Text(
                'Let\'s create a business card for you',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF020288),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            MyTextField(
                isNumbersOnly: false,
                icon: Icons.person_rounded,
                hintText: 'Full Name',
                textcontroller: nameController),
            const SizedBox(
              height: 8,
            ),
            MyTextField(
                isNumbersOnly: false,
                icon: Icons.work_rounded,
                hintText: 'Job Title',
                textcontroller: jobController),
            const SizedBox(
              height: 8,
            ),
            MyTextField(
                isNumbersOnly: true,
                icon: Icons.phone_rounded,
                hintText: 'Phone Number',
                textcontroller: phoneController),
            const SizedBox(
              height: 8,
            ),
            MyTextField(
                isNumbersOnly: false,
                icon: Icons.email_rounded,
                hintText: 'Email',
                textcontroller: emailController),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: _uploadImage,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff333533),
                ),
                child: uploadAware,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              height: 45,
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CardPage(
                        image: image,
                        fullname: nameController.text,
                        jobtitle: jobController.text.toUpperCase(),
                        phonenumber: phoneController.text,
                        email: emailController.text,
                      ),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Make Card',
                      style: TextStyle(color: Color(0xffE2C4FF)),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.arrow_circle_right_rounded,
                        size: 23, color: Color(0xffE2C4FF))
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
