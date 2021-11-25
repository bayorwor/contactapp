import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: const Text('Contact',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
        actions: const [Icon(Icons.more_vert)],
      ),
      body: ListView(
        children: [
          Card(
            elevation: 5,
            shadowColor: Colors.black,
            margin: const EdgeInsets.all(0),
            child: Column(
              children: const [
                SizedBox(
                  height: 20,
                ),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("images/woman.jpg"),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Fosu Kelvin",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text("Tumu, Nabulo"),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1,
            height: 0,
          ),
          Container(
            color: Colors.grey[200],
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Mobile",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "+233 505 419 444",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ]),
                    Row(children: const [
                      CircleAvatar(
                        child: Icon(Icons.message),
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CircleAvatar(
                        child: Icon(Icons.phone),
                        backgroundColor: Colors.white,
                      ),
                    ])
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Email",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "bayorwor60@gmail.com",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ]),
                    const CircleAvatar(
                      child: Icon(Icons.mail),
                      backgroundColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Groups",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "National Mobile app dev",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ]),
                  ],
                ),
              ],
            ),
          ),
          const Card(
            margin: EdgeInsets.all(0),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text("Account Linked",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1,
            height: 0,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.grey[200],
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Telegram",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400)),
                      CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.send)),
                    ]),
                const SizedBox(
                  height: 15,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("WhatsApp",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400)),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(CupertinoIcons.chat_bubble_text),
                      )
                    ]),
              ],
            ),
          ),
          const Card(
            margin: EdgeInsets.all(0),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text("More Options",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1,
            height: 0,
          ),
          Container(
            color: Colors.grey[200],
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("QR Code",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
                SizedBox(
                  height: 15,
                ),
                Text("Share contact",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
