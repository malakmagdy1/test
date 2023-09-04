import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text("WallPP",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: (20))),
                  Text('App',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.indigoAccent,
                          fontSize: (20)))
                ]),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('Popular now',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        fontSize: (15))),
              ),
              Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        'assets/images/khashayar-kouchpeydeh-1NGouFbmWcc-unsplash.jpg',
                        height: 150,
                        width: 120,
                      )),
                  ClipRRect(
                    borderRadius: BorderRadiusDirectional.circular(30),
                    child: Image.asset(
                      'assets/images/khashayar-kouchpeydeh-byExseceWAY-unsplash.jpg',
                      height: 150,
                      width: 120,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/images/ryan-klaus-8QjsdoXDsZs-unsplash.jpg',
                      height: 150,
                      width: 120,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('Cartoon',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        fontSize: (15))),
              ),
              Row(children: [
                Expanded(
                  child: Stack(alignment: Alignment.topCenter, children: [
                    Image.asset(
                      'assets/images/Minions-with-Funny-Line-HD-Desktop-Wallpaper.jpg',
                      height: 100,
                      width: 200,
                      fit: BoxFit.fill,
                    ),
                    Container(
                      decoration: BoxDecoration(color: Color(0x35000000)),
                      width: 200,
                      height: 30,
                      child: FittedBox(
                          fit: BoxFit.contain,
                          child: Text("pic_one",
                              style: TextStyle(
                                  color: Colors.white, fontSize: (15)))),
                    ),
                  ]),
                ),
                Expanded(
                    child: Stack(alignment: Alignment.topCenter, children: [
                      Image.asset(
                        'assets/images/canva-grey-black-simple-cute-cartoon-motivational-quote-desktop-wallpaper-poDQUzjtn9w.jpg',
                        height: 100,
                        width: 200,
                        fit: BoxFit.fill,
                      ),
                      Container(
                          decoration: BoxDecoration(color: Color(0x280857ec)),
                          width: 200,
                          height: 30,
                          child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text("pic_two",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: (15)))))
                    ])),
              ]),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Nowest',
                  style: TextStyle(fontSize: (15)),
                ),
              ),
              Row(children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/images/akram-huseyn-AHkEhVp3biQ-unsplash.jpg',
                      height: 150,
                      width: 120,
                    )),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    'assets/images/tim-sessinghaus-WExaYMWxdzU-unsplash.jpg',
                    height: 150,
                    width: 120,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    'assets/images/visualsofdana-GgdbAyxaKf0-unsplash.jpg',
                    height: 150,
                    width: 120,
                  ),
                ),
              ])
            ])));
  }
}
