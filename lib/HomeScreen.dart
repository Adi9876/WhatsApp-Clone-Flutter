// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whats_clone/calls.dart';
import 'package:whats_clone/community.dart';
import 'package:whats_clone/chats.dart';
import 'package:whats_clone/status.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WhatsApp"),
        backgroundColor: Colors.teal[900],
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          Padding(
              padding: EdgeInsets.only(right: 10),
              child: PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: Container(
                        height: 300,
                        width: 130,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "New group",
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              "New broadcast",
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              "Linked devices",
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              "Starred Messages",
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              "Payments",
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              "Settings",
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        )),
                  ),
                ],
                child: Icon(Icons.more_vert),
              )),
        ],
        bottom: TabBar(
          controller: _controller,
          tabs: [
            Tab(
              icon: Icon(
                Icons.groups_rounded,
                size: 30,
              ),
            ),
            Tab(text: "Chats"),
            Tab(text: "Status"),
            Tab(text: "Calls"),
          ],
        ),
      ),
      body: Container(
        color: Colors.white70,
        child: TabBarView(controller: _controller, children: [
          CommunityPage(),
          ChatsPage(),
          StatusPage(),
          CallsPage()
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.message_sharp),
        onPressed: () {},
        backgroundColor: Colors.teal[900],
      ),
    );
  }
}
