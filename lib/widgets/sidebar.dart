import 'package:flutter/material.dart';

class sidebar extends StatefulWidget {
  const sidebar({super.key});

  @override
  State<sidebar> createState() => _sidebarState();
}

class _sidebarState extends State<sidebar> {
  int setbox = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      child: ListView(
        children: [
          const ListTile(
            leading: CircleAvatar(
              maxRadius: 30,
              backgroundImage: AssetImage("assets/mine.jpg"),
            ),
            title: Text(
              "Muhammad Saad",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            subtitle: Text(
              "m.saad543210@gmail.com",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          buttonDecoration(
            name: "Home Screen",
            iconData: Icons.home,
            onTap: () {
              setState(() {
                setbox = 1;
              });
            },
            boxcolor:
                (setbox == 1) ? const Color(0xffeef8f7) : Colors.transparent,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          buttonDecoration(
            name: "Profile",
            iconData: Icons.person,
            onTap: () {
              setState(() {
                setbox = 2;
              });
            },
            boxcolor:
                (setbox == 2) ? const Color(0xffeef8f7) : Colors.transparent,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          buttonDecoration(
            name: "Fleet",
            iconData: Icons.fire_truck,
            onTap: () {
              setState(() {
                setbox = 3;
              });
            },
            boxcolor:
                (setbox == 3) ? const Color(0xffeef8f7) : Colors.transparent,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          buttonDecoration(
            name: "Schedule",
            iconData: Icons.calendar_today_outlined,
            onTap: () {
              setState(() {
                setbox = 4;
              });
            },
            boxcolor:
                (setbox == 4) ? const Color(0xffeef8f7) : Colors.transparent,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          buttonDecoration(
            name: "Activity",
            iconData: Icons.notifications_none,
            onTap: () {
              setState(() {
                setbox = 5;
              });
            },
            boxcolor:
                (setbox == 5) ? const Color(0xffeef8f7) : Colors.transparent,
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          const Divider(
            color: Colors.black,
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          buttonDecoration(
            name: "LogOut",
            iconData: Icons.logout,
            onTap: () {
              setState(() {
                setbox = 6;
              });
            },
            boxcolor:
                (setbox == 6) ? const Color(0xffeef8f7) : Colors.transparent,
          ),
        ],
      ),
    );
  }

  buttonDecoration({
    required String name,
    required IconData iconData,
    required VoidCallback onTap,
    required Color boxcolor,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: boxcolor),
        child: Row(
          children: [
            Icon(
              iconData,
              size: 28,
              color: Colors.black,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.05,
            ),
            Text(
              name,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}