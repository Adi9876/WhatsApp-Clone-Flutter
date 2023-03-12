// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ListTile(
            leading: Icon(
              Icons.groups_2,
              size: 40,
            ),
            title: Text(
              "New Community",
              style: TextStyle(fontSize: 15),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://th.bing.com/th/id/OIP.fggu2ndxXZYYj0Vk8mxD2AHaHa?pid=ImgDet&rs=1"),
              radius: 40,
            ),
            title: Text(
              "House Of Geeks",
              style: TextStyle(fontSize: 15),
            ),
          ),
        ],
      )),
    );
  }
}
