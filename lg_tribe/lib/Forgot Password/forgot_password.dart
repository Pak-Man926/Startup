import "package:flutter/material.dart";
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:lg_tribe/Login/login.Dart';

class Password extends StatelessWidget {
  const Password({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 120),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 175, 76, 92),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.key, size: 50, color: Colors.white),
                ),
                const SizedBox(height: 40),
                const Text(
                  "Forgot Password?",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text(
                  "No worries, we'll send you reset instructions",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w100),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Registered Phone Number",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(height: 8),
                IntlPhoneField(
                  decoration: const InputDecoration(
                    hintText: "Enter your phone number",
                    border: OutlineInputBorder(),
                  ),
                  initialCountryCode: 'KE',
                  // onChanged: (phone) {
                  //   print(phone.completeNumber);
                  // },
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: () {},
                    color: const Color.fromARGB(255, 206, 25, 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(),
                    ),
                    child: Text(
                      "Verify number",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  icon:Icon(Icons.arrow_back, color: Colors.white),
                  child: const Text(
                    "Back to login",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
