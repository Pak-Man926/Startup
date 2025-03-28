import "package:flutter/material.dart";
import "package:lg_tribe/Country/country.dart";

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: homePage(context)),
    );
  }

  Column homePage(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 100, // Diameter of CircleAvatar (2 * radius)
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/LGE_Logo_HeritageRed_Grey_RGB.png'),
                  fit:
                      BoxFit
                          .scaleDown, // Ensures the image covers the circle fully
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "LG Management System",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "Proceed as:",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w100),
                ),
              ],
            ),
          ],
        ),
        Column(
          children: [
            Padding(padding: EdgeInsets.all(10)),
            SizedBox(
              width: 250,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (context) => Country()));
                },
                child: Text("Merchandiser"),
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            SizedBox(
              width: 250,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (context) => Country()));
                },
                child: Text("Promoter"),
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            SizedBox(
              width: 250,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (context) => Country()));
                },
                child: Text("Floor Service Provider"),
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
          ],
        ),
      ],
    );
  }
}
