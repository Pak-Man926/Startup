import "package:flutter/material.dart";
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:lg_tribe/Login/login.Dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                    color: Color.fromARGB(255, 235, 184, 192),
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    "assets/key-svgrepo-com.svg",
                    width: 50, // Adjust size as needed
                    height: 50,
                    fit: BoxFit.contain,
                    color: Colors.white,
                  ),
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
                const SizedBox(height: 15),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: Row(
                    // Wrap in Row to align horizontally
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: const Color.fromARGB(255, 143, 141, 141),
                      ), // Changed icon color for visibility
                      SizedBox(width: 5), // Adds spacing between icon and text
                      Text(
                        "Back to login",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 143, 141, 141),
                        ),
                      ),
                    ],
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
