import 'package:flutter/material.dart';

class LastPage extends StatefulWidget {
  const LastPage({super.key});

  @override
  State<LastPage> createState() => _LastPageState();
}

class _LastPageState extends State<LastPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Color(0xFF1B1B1B),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.school_outlined,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                color: Colors.white,
                Icons.calendar_month,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person,
                color: Colors.white,
              )),
        ]),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xFF1B1B1B),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: "Welcome, ",
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              TextSpan(
                  text: "Mangcoding",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 23)),
            ])),
            Text(
              'Lets schedule your activities',
              style: TextStyle(color: Colors.white, fontSize: 10),
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ))
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/images/lastpage.png',
            width: 645,
            height: 645,
          ),
        ],
      ),
    );
  }
}
