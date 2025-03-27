import "package:country_flags/country_flags.dart";
import "package:flutter/material.dart";
import "package:lg_tribe/Login/login.Dart";

class Country extends StatelessWidget {
  const Country({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: country(context),
    );
  }

  Scaffold country(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: false,
        left: true,
        right: true,
        minimum: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/lg_tribe_logo.png'),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Select Your Country",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Text(
                      "Each Supported Country has it's own cases",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                  ],
                ),
              ],
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(10),
                children: [
                  MaterialButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Login()),
                        );
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 10),
                        CountryFlag.fromCountryCode(
                          "KE",
                          shape: const Circle(),
                        ),
                        Expanded(child: Text("     Kenya")),
                        Icon(Icons.arrow_forward_ios, size: 15),
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 10),
                        CountryFlag.fromCountryCode(
                          "ET",
                          shape: const Circle(),
                        ),
                        Expanded(child: Text("     Ethopia")),
                        Icon(Icons.arrow_forward_ios, size: 15),
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 10),
                        CountryFlag.fromCountryCode(
                          "TZ",
                          shape: const Circle(),
                        ),
                        Expanded(child: Text("     Tanzania")),
                        Icon(Icons.arrow_forward_ios, size: 15),
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 10),
                        CountryFlag.fromCountryCode(
                          "SD",
                          shape: const Circle(),
                        ),
                        Expanded(child: Text("     Sudan")),
                        Icon(Icons.arrow_forward_ios, size: 15),
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 10),
                        CountryFlag.fromCountryCode(
                          "UG",
                          shape: const Circle(),
                        ),
                        Expanded(child: Text("     Uganda")),
                        Icon(Icons.arrow_forward_ios, size: 15),
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 10),
                        CountryFlag.fromCountryCode(
                          "ZM",
                          shape: const Circle(),
                        ),
                        Expanded(child: Text("     Zambia")),
                        Icon(Icons.arrow_forward_ios, size: 15),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
