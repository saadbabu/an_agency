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
    return ListView(
      children: [
        ListTile(
          title: Text(
            "Muhammad Saad",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.white),
          ),
          subtitle: Text(
            "m.saad543210@gmail.com",
            style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
          ),
        ),
        ExpansionTile(
          trailing: Icon(
            Icons.arrow_drop_down,
            color: Colors.blue,
          ),
          title: buttonDecoration(
            name: "New Account",
            iconData: Icons.account_circle_outlined,
            onTap: () {
              setState(() {
                setbox = 1;
              });
            },
            boxcolor: (setbox == 1) ? Colors.transparent : Colors.transparent,
          ),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                buttonDecoration(
                  name: "Company Information",
                  iconData: Icons.paste,
                  onTap: () {
                    setState(() {
                      setbox = 1;
                    });
                  },
                  boxcolor: (setbox == 1) ? Colors.transparent : Colors.transparent,
                ),
                buttonDecoration(
                  name: "Supplier",
                  iconData: Icons.paste,
                  onTap: () {
                    setState(() {
                      setbox = 1;
                    });
                  },
                  boxcolor: (setbox == 1) ? Colors.transparent : Colors.transparent,
                ),
                buttonDecoration(
                  name: "Customers",
                  iconData: Icons.paste,
                  onTap: () {
                    setState(() {
                      setbox = 1;
                    });
                  },
                  boxcolor: (setbox == 1) ? Colors.transparent : Colors.transparent,
                ),
                buttonDecoration(
                  name: "Products",
                  iconData: Icons.paste,
                  onTap: () {
                    setState(() {
                      setbox = 1;
                    });
                  },
                  boxcolor: (setbox == 1) ? Colors.transparent : Colors.transparent,
                ),
                buttonDecoration(
                  name: "Employees",
                  iconData: Icons.paste,
                  onTap: () {
                    setState(() {
                      setbox = 1;
                    });
                  },
                  boxcolor: (setbox == 1) ? Colors.transparent : Colors.transparent,
                ),
              ],
            ),
          ],
        ),
        ExpansionTile(
          trailing: Icon(
            Icons.arrow_drop_down,
            color: Colors.blue,
          ),
          title: buttonDecoration(
            name: "Sales/Purchase",
            iconData: Icons.lan_outlined,
            onTap: () {
              setState(() {
                setbox = 1;
              });
            },
            boxcolor: (setbox == 1) ? Colors.transparent : Colors.transparent,
          ),
          children: [
            Column(
              children: [
                buttonDecoration(
                  name: "Purchase Invoice",
                  iconData: Icons.paste,
                  onTap: () {
                    setState(() {
                      setbox = 1;
                    });
                  },
                  boxcolor: (setbox == 1) ? Colors.transparent : Colors.transparent,
                ),
                buttonDecoration(
                  name: "Sales Invoice (Qoute)",
                  iconData: Icons.paste,
                  onTap: () {
                    setState(() {
                      setbox = 1;
                    });
                  },
                  boxcolor: (setbox == 1) ? Colors.transparent : Colors.transparent,
                ),
                buttonDecoration(
                  name: "Sale Return (Customer)",
                  iconData: Icons.paste,
                  onTap: () {
                    setState(() {
                      setbox = 1;
                    });
                  },
                  boxcolor: (setbox == 1) ? Colors.transparent : Colors.transparent,
                ),
                // Add more widgets here if needed
              ],
            ),
          ],
        ),
        ExpansionTile(
          trailing: Icon(
            Icons.arrow_drop_down,
            color: Colors.blue,
          ),
          title: buttonDecoration(
            name: "Accounts",
            iconData: Icons.supervisor_account_sharp,
            onTap: () {
              setState(() {
                setbox = 1;
              });
            },
            boxcolor: (setbox == 1) ? Colors.transparent : Colors.transparent,
          ),
          children: [
            Column(
              children: [
                buttonDecoration(
                  name: "Customer Ledger",
                  iconData: Icons.paste,
                  onTap: () {
                    setState(() {
                      setbox = 1;
                    });
                  },
                  boxcolor: (setbox == 1) ? Colors.transparent : Colors.transparent,
                ),
                buttonDecoration(
                  name: "Supplier Ledger",
                  iconData: Icons.paste,
                  onTap: () {
                    setState(() {
                      setbox = 1;
                    });
                  },
                  boxcolor: (setbox == 1) ? Colors.transparent : Colors.transparent,
                ),
                buttonDecoration(
                  name: "Expenses",
                  iconData: Icons.paste,
                  onTap: () {
                    setState(() {
                      setbox = 1;
                    });
                  },
                  boxcolor: (setbox == 1) ? Colors.transparent : Colors.transparent,
                ),
                // Add more widgets here if needed
              ],
            ),
          ],
        ),
        ExpansionTile(
          trailing: Icon(
            Icons.arrow_drop_down,
            color: Colors.blue,
          ),
          title: buttonDecoration(
            name: "Reports",
            iconData: Icons.add_chart,
            onTap: () {
              setState(() {
                setbox = 1;
              });
            },
            boxcolor: (setbox == 1) ? Colors.transparent : Colors.transparent,
          ),
          children: [
            Column(
              children: [
                buttonDecoration(
                  name: "General Reports",
                  iconData: Icons.paste,
                  onTap: () {
                    setState(() {
                      setbox = 1;
                    });
                  },
                  boxcolor: (setbox == 1) ? Colors.transparent : Colors.transparent,
                ),
                buttonDecoration(
                  name: "All S Invoice (Qoute)",
                  iconData: Icons.paste,
                  onTap: () {
                    setState(() {
                      setbox = 1;
                    });
                  },
                  boxcolor: (setbox == 1) ? Colors.transparent : Colors.transparent,
                ),
                buttonDecoration(
                  name: "All S Invoice (Final)",
                  iconData: Icons.paste,
                  onTap: () {
                    setState(() {
                      setbox = 1;
                    });
                  },
                  boxcolor: (setbox == 1) ? Colors.transparent : Colors.transparent,
                ),
                buttonDecoration(
                  name: "All Purchase Invoices",
                  iconData: Icons.paste,
                  onTap: () {
                    setState(() {
                      setbox = 1;
                    });
                  },
                  boxcolor: (setbox == 1) ? Colors.transparent : Colors.transparent,
                ),
                buttonDecoration(
                  name: "All Returned Invoices",
                  iconData: Icons.paste,
                  onTap: () {
                    setState(() {
                      setbox = 1;
                    });
                  },
                  boxcolor: (setbox == 1) ? Colors.transparent : Colors.transparent,
                ),
                // Add more widgets here if needed
              ],
            ),
          ],
        ),
        ExpansionTile(
          trailing: Icon(
            Icons.arrow_drop_down,
            color: Colors.blue,
          ),
          title: buttonDecoration(
            name: "Payments",
            iconData: Icons.paid_outlined,
            onTap: () {
              setState(() {
                setbox = 1;
              });
            },
            boxcolor: (setbox == 1) ? Colors.transparent : Colors.transparent,
          ),
          children: [
            Column(
              children: [
                buttonDecoration(
                  name: "Daily Closing",
                  iconData: Icons.paste,
                  onTap: () {
                    setState(() {
                      setbox = 1;
                    });
                  },
                  boxcolor: (setbox == 1) ? Colors.transparent : Colors.transparent,
                ),
                buttonDecoration(
                  name: "Add Recovery Sheet",
                  iconData: Icons.paste,
                  onTap: () {
                    setState(() {
                      setbox = 1;
                    });
                  },
                  boxcolor: (setbox == 1) ? Colors.transparent : Colors.transparent,
                ),
                buttonDecoration(
                  name: "Recovery Payment",
                  iconData: Icons.paste,
                  onTap: () {
                    setState(() {
                      setbox = 1;
                    });
                  },
                  boxcolor: (setbox == 1) ? Colors.transparent : Colors.transparent,
                ),
                // Add more widgets here if needed
              ],
            ),
          ],
        ),
      ],
    );

  }

  buttonDecoration({
    required String name,
    IconData? iconData,
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
            GradientIcon(iconData!, 30,
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