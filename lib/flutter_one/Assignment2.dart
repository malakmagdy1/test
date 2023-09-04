import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: WhatsApp(),
    );
  }
}

class WhatsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Row(
          children: [
            Container(child: Icon(Icons.arrow_back)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/images/akram-huseyn-AHkEhVp3biQ-unsplash.jpg'),
                  radius: 25.0),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(child: Text("Person")),
            ),
            SizedBox(width: 60),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.video_call_rounded),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.add_call),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.more_vert),
            ),
          ],
        )),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  "assets/images/desktop-wallpaper-hopped-the-original-background-if-you-want-to-use-whatsapp-dark-mode-go-to-settings-chats-background-and-use-this-r-whatsapp.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: 20),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                      backgroundImage: AssetImage(
                          'assets/images/khashayar-kouchpeydeh-1NGouFbmWcc-unsplash.jpg'),
                      radius: 25.0),
                ),
                Stack(children: [
                  Container(
                      width: 250,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0x44213CC5),
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ))),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text(
                      "This is My First Message",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )
                ]),
              ],
            ),
            SizedBox(height: 40),
            Row(
              children: [
                SizedBox(width: 65),
                Stack(children: [
                  Container(
                    width: 250,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0x44213CC5),
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text(
                      "This is My Second Message",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )
                ]),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                      backgroundImage: AssetImage(
                          'assets/images/visualsofdana-GgdbAyxaKf0-unsplash.jpg'),
                      radius: 25.0),
                ),
              ],
            ),
            SizedBox(
              height: 490,
            ),
            Row(
              children: [
                SizedBox(width: 20),
                Stack(children: [
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0x44213CC5),
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        )),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(Icons.emoji_emotions_outlined),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 40.0),
                      child: Text(
                        "Type a Message",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 14,
                    left: 250,
                    child: Icon(Icons.attach_file),
                  )
                ]),
                SizedBox(
                  width: 10,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Icon(Icons.keyboard_voice))
              ],
            ),
          ]),
        ));
  }
}
