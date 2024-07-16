import 'package:an_agency/UI/home.dart';
import 'package:an_agency/UI/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool value = false;
  TextEditingController userName = new TextEditingController();
  TextEditingController emailAddress = new TextEditingController();
  TextEditingController password = new TextEditingController();
  void signup() async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress.text,
        password: password.text,
      );
     print(emailAddress.text);
     print(password.text);
      Navigator.push(context, MaterialPageRoute(builder: ((context) => const Home())));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff151515),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: size.height * 0.05, left: size.width * 0.04),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/Star.PNG"),
                    Image.asset(
                      "assets/Arrow.PNG",
                      scale: 0.65,
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: size.height * 0.15,
                    left: size.width * 0.04,
                    right: size.width * 0.04),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          "Create your account",
                          style: TextStyle(color: Colors.white, fontSize: 23),
                        ),
                        SizedBox(
                          width: size.width * 0.01,
                        ),
                        Image.asset("assets/Stars.PNG")
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.004,
                    ),
                    const Text(
                      "Welcome Please enter your details.",
                      style: TextStyle(color: Color(0xff4f4f4f), fontSize: 17),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    //TextForm FIled for Name
                    const Text(
                      "Name",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17.0),
                          boxShadow: const [
                            BoxShadow(
                                color: Color(0xff494949),
                                offset: Offset(0, 1.9))
                          ]),
                      child: TextFormField(
                        style: const TextStyle(color: Colors.white),
                        cursorColor: Colors.white,
                        controller: userName,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xff272728),
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Color(0xff828281),
                          ),
                          hintText: "Enter Your Name",
                          hintStyle: const TextStyle(color: Color(0xff828281)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(17.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(17.0),
                              borderSide:
                                  const BorderSide(color: Colors.white)),
                        ),
                      ),
                    ),
                    //Name Field Ended
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    //TextForm FIled for Email
                    const Text(
                      "Email",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17.0),
                          boxShadow: const [
                            BoxShadow(
                                color: Color(0xff494949),
                                offset: Offset(0, 1.9))
                          ]),
                      child: TextFormField(
                        style: const TextStyle(color: Colors.white),
                        cursorColor: Colors.white,
                        controller: emailAddress,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xff272728),
                          prefixIcon: const Icon(
                            Icons.email_outlined,
                            color: Color(0xff828281),
                          ),
                          hintText: "Enter Your Email",
                          hintStyle: const TextStyle(color: Color(0xff828281)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(17.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(17.0),
                              borderSide:
                                  const BorderSide(color: Colors.white)),
                        ),
                      ),
                    ),
                    //Email Text Field Ended
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    //TextForm FIled for Password
                    const Text(
                      "Password",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17.0),
                          boxShadow: const [
                            BoxShadow(
                                color: Color(0xff494949),
                                offset: Offset(0, 1.9))
                          ]),
                      child: TextFormField(
                        style: const TextStyle(color: Colors.white),
                        cursorColor: Colors.white,
                        controller: password,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xff272728),
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Color(0xff828281),
                          ),
                          suffixIcon: const Icon(
                            Icons.remove_red_eye_outlined,
                            color: Color(0xff828281),
                          ),
                          hintText: "Enter Your Password",
                          hintStyle: const TextStyle(color: Color(0xff828281)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(17.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(17.0),
                              borderSide:
                                  const BorderSide(color: Colors.white)),
                        ),
                      ),
                    ),
                    //Password Text Field Ended
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    //Signup button
                    InkWell(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const Home()));
                        signup();
                      },
                      child: Container(
                        height: size.height * 0.075,
                        width: size.width * 0.9,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17.0),
                            gradient: const LinearGradient(colors: <Color>[
                              Color(0xffc94c47),
                              Color(0xffa64666),
                              Color(0xff89417e)
                            ])),
                        child: const Center(
                            child: Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    //google container
                    Container(
                      height: size.height * 0.075,
                      width: size.width * 0.9,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xff4f4f4f), width: 1.0),
                        borderRadius: BorderRadius.circular(17.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: size.width * 0.23),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/google.png",
                              scale: 4,
                            ),
                            const Text(
                              "Google",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 19.0),
                            )
                          ],
                        ),
                      ),
                    ),
                    //Facebook cantainer
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Container(
                      height: size.height * 0.075,
                      width: size.width * 0.9,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xff4f4f4f), width: 1.0),
                        borderRadius: BorderRadius.circular(17.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: size.width * 0.27),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/facebook.png",
                              scale: 7,
                            ),
                            SizedBox(
                              width: size.width * 0.05,
                            ),
                            const Text(
                              "Facebook",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 19.0),
                            )
                          ],
                        ),
                      ),
                    ),
                    //facebook container ended
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: size.width * 0.1),
                      child: Row(
                        children: [
                          const Text(
                            "Already have have an account?",
                            style: TextStyle(color: Color(0xff828281)),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Login()));
                              },
                              child: const Text(
                                "Login",
                                style: TextStyle(color: Colors.white),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
