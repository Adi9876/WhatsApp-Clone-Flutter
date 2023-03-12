// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class CallCard extends StatelessWidget {
  const CallCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
            "https://cdn.icon-icons.com/icons2/2643/PNG/512/male_boy_person_people_avatar_icon_159358.png"),
        radius: 25,
      ),
      title: Text(
        "Contacts Status",
        style: TextStyle(fontSize: 15),
      ),
      subtitle: Row(children: [
        Icon(Icons.arrow_outward_outlined),
        Text("Yesterday 10:10")
      ]),
      trailing: Icon(Icons.call),
    );
  }
}

class CallsPage extends StatelessWidget {
  const CallsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://th.bing.com/th/id/OIP.QYznGnqVCnE0QTQ_8boAjQHaFC?pid=ImgDet&w=840&h=572&rs=1"),
              radius: 25,
            ),
            title: Text("Create call link"),
            subtitle: Text("Share a link for your WhatsApp call"),
          ),
          Container(padding: EdgeInsets.all(10), child: Text("Recent")),
          CallCard(),
          CallCard(),
          CallCard(),
          CallCard(),
        ],
      ),
    );
  }
}
