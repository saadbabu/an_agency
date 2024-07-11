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
  final TextEditingController _controller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
          backgroundColor: Colors.black,
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
                                //color: const Color(0xff4f9691),
                                borderRadius: BorderRadius.circular(10.0),
                                gradient: const LinearGradient(colors:<Color>[
                                  Color(0xffc94c47),
                                  Color(0xffa64666),
                                  Color(0xff89417e)
                                ]),

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
                          //color: const Color(0xff4f9691),
                          borderRadius: BorderRadius.circular(10.0),
                          gradient: const LinearGradient(colors:<Color>[
                            Color(0xffc94c47),
                            Color(0xffa64666),
                            Color(0xff89417e)
                          ]),

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
              Form(
                key: _formKey,
                child: Padding(
                  padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.12, left: MediaQuery.of(context).size.width*0.03),
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.94,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,
                        width: 4.0,),
                      borderRadius: const BorderRadius.all(Radius.circular(25.0)),
                    ),
                    child: TextFormField(
                      controller: _controller,
                      decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                          onTap: (){},
                            child: Icon(Icons.send, color: Colors.white,
                            )),
                        contentPadding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
                        hintText: 'Enter your search query',
                        hintStyle: TextStyle(color: Colors.white),
                        border: InputBorder.none,
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),


                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
