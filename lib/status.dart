// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({super.key});

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
      subtitle: Text("Yesterday 10:10"),
    );
  }
}

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

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
                  "https://cdn.themix.org.uk/uploads/2013/07/faces-01-768x767.png"),
              radius: 25,
            ),
            title: Text("My status"),
            subtitle: Text("Tap to add status update"),
          ),
          Container(padding: EdgeInsets.all(8), child: Text("Viewed updates")),
          StatusCard(),
          StatusCard(),
          StatusCard(),
          StatusCard(),
        ],
      ),
    );
  }
}
