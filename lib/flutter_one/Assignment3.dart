import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FaceBook(),
      routes: {
        "face_book": (context) => FaceBook(),
        "media": (context) => MediaScreen()
      },
    );
  }
}

class FaceBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 130,
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset(
                  "assets/images/Screenshot Face2023-07-31 075145.jpg"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    child: Text(
                      "Email or Phone",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white70,
                          fontSize: (20)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              width: 300,
              color: Colors.white70,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    child: Text(
                      "Password",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.white70,
                        fontSize: (20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 1,
                width: 300,
                color: Colors.white70,
              ),
            ),
            Container(
              child: OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "media");
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "LOG IN",
                      style: TextStyle(fontSize: (20), color: Colors.white70),
                    ),
                  ),
                  style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all<Size>(
                    Size(300, 45),
                  ))),
            ),
            SizedBox(
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Sign Up for Facebook",
                style: TextStyle(color: Colors.white, fontSize: (18)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Forgot Password",
                style: TextStyle(color: Colors.white, fontSize: (18)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MediaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Column(
          children: [
            Row(children: [
              Owner(),
              Owner(),
              Owner(),
              Owner(),
              SizedBox(height: 30),
            ]),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Icon(
                  Icons.account_circle_sharp,
                  size: 50,
                ),
                Text("Owner"),
                SizedBox(
                  height: 30,
                ),
              ]),
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  "My post",
                  style: TextStyle(fontSize: (20)),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 80),
                Container(
                  child: Text(
                    "100 comments",
                    style: TextStyle(fontSize: (15)),
                  ),
                ),
                Container(
                  width: 350,
                  height: 2,
                  color: Colors.black,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.ac_unit),
                    ),
                    Text(
                      "Like",
                      style: TextStyle(fontSize: (15)),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.mode_comment_rounded),
                    ),
                    Text(
                      "comment",
                      style: TextStyle(fontSize: (15)),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.screen_share_sharp),
                    ),
                    Text(
                      "Share",
                      style: TextStyle(fontSize: (15)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 355,
                  height: 2,
                  color: Colors.black,
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Icon(
                  Icons.account_circle_sharp,
                  size: 50,
                ),
                Text("Owner"),
                SizedBox(
                  height: 30,
                ),
              ]),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  "My post",
                  style: TextStyle(fontSize: (20)),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 90),
                Container(
                  child: Text(
                    "100 comments",
                    style: TextStyle(fontSize: (15)),
                  ),
                ),
                Container(
                  width: 350,
                  height: 2,
                  color: Colors.black,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.ac_unit),
                    ),
                    Text(
                      "Like",
                      style: TextStyle(fontSize: (15)),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.mode_comment_rounded),
                    ),
                    Text(
                      "comment",
                      style: TextStyle(fontSize: (15)),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.screen_share_sharp),
                    ),
                    Text(
                      "Share",
                      style: TextStyle(fontSize: (15)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 355,
                  height: 2,
                  color: Colors.black,
                )
              ],
            ),
          ],
        ));
  }
}

class Owner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Stack(
        children: [
          Container(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    "assets/images/facebookPesron.jpeg",
                    width: 90,
                    height: 140,
                  ))),
          Positioned(
            child: Text(
              "owner",
              style: TextStyle(fontSize: (15)),
            ),
            bottom: 5,
            left: 20,
          ),
          Icon(
            Icons.account_circle,
          )
        ],
      ),
    );
  }
}
