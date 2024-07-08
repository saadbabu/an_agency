import 'package:an_agency/widgets/sidebar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<SideMenuState> sideMenuKey = GlobalKey<SideMenuState>();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SideMenu(
      background: const Color(0xff31837d),
      key: sideMenuKey,
      menu: const sidebar(),
      maxMenuWidth: 250,
      type: SideMenuType.shrinkNSlide,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Stack(children: [
              Padding(
                padding: EdgeInsets.only(
                    top: size.height * 0.03,
                    left: size.width * 0.03,
                    right: size.width * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          if (sideMenuKey.currentState!.isOpened) {
                            sideMenuKey.currentState!.closeSideMenu();
                          } else {
                            sideMenuKey.currentState!.openSideMenu();
                          }
                        },
                        child: Container(
                            height: size.height * 0.05,  
                            width: size.width * 0.1,
                            decoration: BoxDecoration(
                                color: const Color(0xff4f9691),
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.grey,
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      offset: Offset(0, 3))
                                ]),
                            child: const Icon(
                              Icons.menu_rounded,
                              size: 30,
                              color: Colors.white,
                            ))),
                    Container(
                        width: size.width * 0.3,
                        child: Image.asset(
                          "assets/KGTL_logo.png",
                          color: const Color(0xff127a7a),
                        )),
                    Container(
                      height: size.height * 0.05,
                      width: size.width * 0.1,
                      decoration: BoxDecoration(
                          color: const Color(0xff4f9691),
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: Offset(0, 3))
                          ]),
                      child: const Icon(
                        Icons.notifications_none,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: size.height * 0.2),
                child: Container(
                  height: size.height * 0.4,
                  width: size.width * 1,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 220, 240, 238),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0)),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: size.height * 0.07, left: size.width * 0.07),
                        child: Row(
                          children: [
                            Container(
                              height: size.height * 0.12,
                              width: size.width * 0.25,
                              decoration: BoxDecoration(
                                  color: const Color(0xff127a7a),
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(7.0),
                                    child: Text(
                                      "IN",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: size.width * 0.05),
                                    child: const Row(
                                      children: [
                                        Text(
                                          "Total:",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          "50",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.05,
                            ),
                            Container(
                              height: size.height * 0.12,
                              width: size.width * 0.25,
                              decoration: BoxDecoration(
                                  color: const Color(0xff127a7a),
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(7.0),
                                    child: Text(
                                      "QUEUE",
                                      style: TextStyle(
                                          fontSize: 23,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: size.width * 0.05),
                                    child: const Row(
                                      children: [
                                        Text(
                                          "Total:",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          "50",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.05,
                            ),
                            Container(
                              height: size.height * 0.12,
                              width: size.width * 0.25,
                              decoration: BoxDecoration(
                                  color: const Color(0xff127a7a),
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(7.0),
                                    child: Text(
                                      "OUT",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: size.width * 0.05),
                                    child: const Row(
                                      children: [
                                        Text(
                                          "Total:",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          "50",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: size.height*0.44),
                child: Container(
                  width: size.width*1,
                  height: size.height*0.6,
                 decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0))
                 ),
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset("assets/chart.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: size.width*0.02,right: size.width*0.07),
                      child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Upcomming Details",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                        Text("See all",style: TextStyle(color: Color.fromARGB(255, 170, 163, 163),fontWeight: FontWeight.bold),)
                      ],
                      ),
                    ),
                    SizedBox(height: size.height*0.03,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: size.height*0.1,
                        width: size.width*0.9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.white,
                          boxShadow: const [BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0, 1)
                          )]
                          ),
                        child: Padding(
                          padding: EdgeInsets.only(left: size.width*0.05),
                          child: Row(
                            children: [
                              const Icon(Icons.filter_alt_outlined,color:const Color(0xff127a7a),),
                              Padding(
                                padding: EdgeInsets.only(top: size.height*0.01,left: size.width*0.1),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Filter Change",style: TextStyle(fontWeight: FontWeight.bold),),
                                    Text("Due On: 25th march,2024",style: TextStyle(color: Colors.grey),)
                                  ],
                                ),
                              ),
                              SizedBox(width: size.width*0.1,),
                              const Icon(Icons.arrow_forward,color:Color(0xff127a7a),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: size.height*0.1,
                          width: size.width*0.9,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: const Color(0xff127a7a),
                            boxShadow: const [BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(0, 1)
                            )]
                            ),
                          child: Padding(
                            padding: EdgeInsets.only(left: size.width*0.05),
                            child: Row(
                              children: [
                                const Icon(Icons.whatshot_rounded,color:Colors.white,),
                                Padding(
                                  padding: EdgeInsets.only(top: size.height*0.01,left: size.width*0.1),
                                  child: const Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Oil Change",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                                      Text("Due On: 25th march,2024",style: TextStyle(color: Colors.white),)
                                    ],
                                  ),
                                ),
                                SizedBox(width: size.width*0.1,),
                                const Icon(Icons.arrow_forward,color:Colors.white,)
                              ],
                            ),
                          ),
                        ),
                    ),
                  ],
                 ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
