import 'package:dirbbox/profile_page.dart';
import 'package:flutter/material.dart';

class logginPage extends StatelessWidget {
  static const nameRoute = '/logginpage';

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            //background
            Container(
              width: widthScreen,
              child: Image.asset(
                "assets/images/bg.png",
                fit: BoxFit.cover,
              ),
            ),
            //layer body
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 130,
                  ),
                  Container(
                    // color: Colors.amber,
                    width: 200,
                    height: 200,
                    child: Image.asset("assets/images/pic1.png"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Wellcome to",
                    style: TextStyle(fontSize: 22),
                  ),
                  Text("Dirbbox",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 250,
                    child: Text(
                        "Best cloud storage platform for all business and individuals to manage there data\n\n Join For Free.",
                        style: TextStyle(fontSize: 16)),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Image.asset("assets/icons/finger.png"),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Smart Id",
                              style: TextStyle(color: Color(0xFF567DF4)),
                            )
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 25),
                            fixedSize: Size(150, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(ProfilePage.nameRoute);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Sign in",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.arrow_right_alt_rounded,
                              color: Colors.white,
                            )
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF567DF4),
                            fixedSize: Size(150, 50),
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 25),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                      child: Text("Use Social Login",
                          style: TextStyle(fontSize: 16))),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/instagram_logo.png"),
                      SizedBox(
                        width: 60,
                      ),
                      Image.asset("assets/icons/twitter_logo.png"),
                      SizedBox(
                        width: 60,
                      ),
                      Image.asset("assets/icons/facebook_logo.png"),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                      child: Text("Create an account",
                          style: TextStyle(fontSize: 16))),
                ],
              ),
            )
          ],
        ));
  }
}
