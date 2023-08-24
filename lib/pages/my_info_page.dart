import 'package:arukari/helper/constants.dart';
import 'package:arukari/widgets/big_text.dart';
import 'package:arukari/widgets/common/navbar.dart';
import 'package:arukari/widgets/link_text.dart';
import 'package:arukari/widgets/my_info/tabbed_widget.dart';
import 'package:arukari/widgets/my_info/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class User {
  final int id;
  final String userName;
  final String password;

  User({
    required this.id,
    required this.userName,
    required this.password,
  });
}

class MyInfoPage extends StatefulWidget {
  const MyInfoPage({Key? key}) : super(key: key);

  @override
  _MyInfoPageState createState() => _MyInfoPageState();
}

class _MyInfoPageState extends State<MyInfoPage> {
  List<User> users = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final response = await http
        .get(Uri.parse('https://fakerestapi.azurewebsites.net/api/v1/Users'));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      final List<User> fetchedUsers = [];
      for (var userData in data) {
        final user = User(
          id: userData['id'],
          userName: userData['userName'],
          password: userData['password'],
        );
        fetchedUsers.add(user);
      }
      setState(() {
        users = fetchedUsers;
      });
    } else {
      // Handle error
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Navbar(),
          Expanded(
            child: Container(
              color: Constants.twoE,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  children: [
                    const LeftSidebar(),
                    Expanded(
                      child: Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 14, horizontal: 24),
                          child: Column(
                            children: const [
                              Breadcrumb(),
                              // Text("Employees / Abdullah Al Muzaki / General"),
                              BigText("Personal", 30,
                                  fontWeight: FontWeight.w600),
                              Expanded(child: MyTabbedPage())
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return ListTile(
                  title: Text(user.userName),
                  subtitle: Text(user.password),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class Breadcrumb extends StatelessWidget {
  const Breadcrumb({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const LinkText(
          text: "Employees",
          url: "https://github.com/",
        ),
        Container(margin: const EdgeInsets.all(8), child: const Text("/")),
        const LinkText(
          text: "Abdullah Al Muzaki",
          url: "https://github.com/",
        ),
        Container(margin: const EdgeInsets.all(8), child: const Text("/")),
        const LinkText(
          text: "General",
          url: "https://github.com/",
        ),
      ],
    );
  }
}
