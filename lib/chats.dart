// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class CardTab extends StatelessWidget {
  const CardTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
            "https://th.bing.com/th/id/R.f540a12d889f1ab9ed9a6cee78a03dac?rik=ddvTOKGrvpGS5w&riu=http%3a%2f%2fwww.bluebellphysio.co.uk%2fwp-content%2fuploads%2f2015%2f08%2fperson-icon.png&ehk=FerUG%2bpmnayPDWKm5SRJj18CaOyFSN1dLTg%2bUPEM1AI%3d&risl=&pid=ImgRaw&r=0"),
        backgroundColor: Colors.black,
        radius: 25,
      ),
      trailing: Text("10:00"),
      title: Text(
        "Demo Chat",
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
      subtitle: Row(children: [
        Icon(Icons.done_all),
        Text("Hello there",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold))
      ]),
    );
  }
}

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CardTab(),
        const Divider(),
        CardTab(),
        const Divider(),
        CardTab(),
        const Divider(),
        CardTab(),
        const Divider(),
        CardTab(),
        const Divider(),
        CardTab(),
        const Divider(),
        CardTab(),
        const Divider(),
        CardTab(),
        const Divider(),
        CardTab(),
        const Divider(),
        CardTab(),
        const Divider(),
      ],
    );
  }
}
