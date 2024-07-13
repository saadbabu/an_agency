import 'package:flutter/cupertino.dart';
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
            // leading: CircleAvatar(
            //   maxRadius: 30,
            //   backgroundImage: AssetImage("assets/mine.jpg"),
            // ),
            title: Text(
              "Muhammad Saad",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16,
              color: Colors.white),
            ),
            subtitle: Text(
              "m.saad543210@gmail.com",
              style: TextStyle(
                  color: Colors.white,
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
                (setbox == 1) ? Colors.transparent : Colors.transparent,
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
                (setbox == 2) ? Colors.transparent : Colors.transparent,
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
                (setbox == 3) ? Colors.transparent : Colors.transparent,
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
                (setbox == 4) ? Colors.transparent : Colors.transparent,
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
                (setbox == 5) ? Colors.transparent : Colors.transparent,
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
                (setbox == 6) ? Colors.transparent : Colors.transparent,
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
            GradientIcon(iconData, 30,
          LinearGradient(colors: [
            Color(0xffc94c47),
            Color(0xffa64666),
            Color(0xff89417e)
          ])),
            // Icon(
            //   iconData,
            //   size: 28,
            //   color: Colors.white,
            // ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.05,
            ),
            // GradientText(name, gradient: LinearGradient(colors: [
            //   Color(0xffc94c47),
            //   Color(0xffa64666),
            //   Color(0xff89417e)
            // ]))
            Text(
              name,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

class GradientIcon extends StatelessWidget{
  GradientIcon(this.icon, this.size, this.gradient);
  final IconData icon;
  final double size;
  final Gradient gradient;

  @override
  Widget build(BuildContext context){
    return ShaderMask(shaderCallback: (bounds) => gradient.createShader(
      Rect.fromLTWH(0, 0, bounds.width, bounds.height),
    ),
      child: Icon(
        icon,
        size: size,
        color: Colors.white,
      ),
    );
  }
}