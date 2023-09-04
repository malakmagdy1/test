import 'package:flutter/material.dart';
import 'package:untitled3/Assignment5/text_input.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "second": (context) => ContactScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: ContactScreen(),
    );
  }
}

class ContactScreen extends StatefulWidget {
  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  final enterNumber = TextEditingController(text: '');
  final enterUserName = TextEditingController(text: '');
  String displayedText = ''; ///////////////////////
  void dispose() {
    enterNumber.dispose();
    enterUserName.dispose();
    super.dispose();
  }

  void updateDisplayedText() {
    setState(() {
      displayedText = '${enterNumber.text}\n${enterUserName.text}';
    });
  } //////////////////////

  void DeletupdateDisplayedText() {
    setState(() {
      displayedText = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x6BFFFFFF),
      appBar: AppBar(
        title: Text(
          "Contact Screen",
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "third",
                  arguments: Contact(
                      enterNumber: enterNumber.text,
                      enterUserName: enterUserName.text));
            },
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                TextInput(
                    controller: enterNumber,
                    hint: "Enter Your Number",
                    buttton: Icons.call),
                SizedBox(
                  height: 20,
                ),
                TextInput(
                    controller: enterUserName,
                    hint: "Enter Your Name",
                    buttton: Icons.border_color_outlined)
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Stack(
              children: [
                Container(
                  width: 170,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blueAccent,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      updateDisplayedText();
                    },
                    child: Text(
                      "Add",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                    ))
              ],
            ),
            Stack(
              children: [
                Container(
                  width: 170,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.red,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      DeletupdateDisplayedText();
                    },
                    child: Text(
                      "Delete",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                    ))
              ],
            )
          ]),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        displayedText,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Contact {
  String? enterNumber;
  String? enterUserName;

  Contact({required this.enterNumber, required this.enterUserName});
}
