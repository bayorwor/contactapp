// ignore_for_file: prefer_const_constructors

import 'package:contactapp/contact_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Contact app',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List myContacts = listOfContacts;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: const Text(
          "My Contacts",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            child: CircleAvatar(
              backgroundImage: AssetImage("images/woman.jpg"),
            ),
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: myContacts.length,
          itemBuilder: (BuildContext context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (index == 0)
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            hintText: "Search by name or number",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ))),
                  ),
                if (index == 0)
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text("Recents", style: TextStyle(fontSize: 25)),
                  ),
                if (index == 2)
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text("Contacts",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                  ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ContactPage(
                                  myContact: myContacts[index],
                                )));
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(myContacts[index]["image"]),
                    ),
                    title: Text(
                      myContacts[index]["name"],
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                    subtitle: Text(myContacts[index]["phone"]),
                    trailing: Icon(Icons.more_horiz),
                  ),
                ),
                const Divider(
                  height: 4,
                  color: Colors.grey,
                ),
              ],
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.add,
          size: 50,
        ),
      ),
    );
  }
}

List listOfContacts = [
  {
    "name": "Olivia",
    "location": "Location",
    "email": "email1@email.com",
    "phone": "+233 505 419 449",
    "Group": "Family",
    "image": "https://picsum.photos/200/300?random=10",
  },
  {
    "name": "Ugo",
    "location": "Location",
    "email": "yourem@email.com",
    "phone": "+233 505 419 444",
    "Group": "Family",
    "image": "https://picsum.photos/200/300?random=40",
  },
  {
    "name": "Kelvin",
    "location": "Location",
    "email": "yourem@email.com",
    "phone": "+233 505 000 484",
    "Group": "Family",
    "image": "https://picsum.photos/200/300?random=50",
  },
  {
    "name": "Uche",
    "location": "Location",
    "email": "yourem@email.com",
    "phone": "+233 505 419 455",
    "Group": "Family",
    "image": "https://picsum.photos/200/300?random=60",
  },
  {
    "name": "Oluwafemi",
    "location": "Location",
    "email": "yourem@email.com",
    "phone": "+233 245 419 4401",
    "Group": "Family",
    "image": "https://picsum.photos/200/300?random=70",
  },
  {
    "name": "Oluwaseyi",
    "location": "Location",
    "email": "yourem@email.com",
    "phone": "+233 505 009 555",
    "Group": "Family",
    "image": "https://picsum.photos/200/300?random=80",
  },
  {
    "name": "Desmond",
    "location": "Location",
    "email": "yourem@email.com",
    "phone": "+233 205 419 44",
    "Group": "Family",
    "image": "https://picsum.photos/200/300?random=90",
  },
  {
    "name": "Aseidu",
    "location": "Location",
    "email": "yourem@email.com",
    "phone": "050541944",
    "Group": "Family",
    "image": "https://picsum.photos/200/300?random=101",
  },
  {
    "name": "Hagun",
    "location": "Location",
    "email": "yourem@email.com",
    "phone": "+233 595 419 503",
    "Group": "Family",
    "image": "https://picsum.photos/200/300?random=205",
  },
  {
    "name": "Derrick",
    "location": "Location",
    "email": "yourem@email.com",
    "phone": "+233 555 419 404",
    "Group": "Family",
    "image": "https://picsum.photos/200/300?random=309",
  },
  {
    "name": "Jackie Appiah",
    "location": "Location",
    "email": "yourem@email.com",
    "phone": "+233 235 419 300",
    "Group": "Family",
    "image": "https://picsum.photos/200/300?random=500",
  },
];
