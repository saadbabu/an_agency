import 'package:an_agency/UI/home.dart';
import 'package:an_agency/UI/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool value = false;
  TextEditingController emailAddress = new TextEditingController();
  TextEditingController password = new TextEditingController();
  void login() async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailAddress.text, password: password.text);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Home()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
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
                          "Log in to your account",
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
                      "Welcome Back! Please enter your details.",
                      style: TextStyle(color: Color(0xff4f4f4f), fontSize: 17),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
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
                    //Email Field Ended
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
                    Row(
                      children: [
                        Checkbox(
                          value: value,
                          activeColor: Colors.white,
                          checkColor: Colors.black,
                          onChanged: (bool? newbool) {
                            if (newbool != null) {
                              setState(() {
                                value = newbool;
                              });
                            }
                          },
                        ),
                        //chckbox Ended
                        const Text(
                          "Remember for 1 day",
                          style: TextStyle(color: Color(0xff828281)),
                        ),
                        SizedBox(
                          width: size.width * 0.09,
                        ),
                        const Text(
                          "Forget password",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    //Login button
                    InkWell(
                      onTap: () {
                        login();
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
                          "Log In",
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
                      padding: EdgeInsets.only(left: size.width * 0.15),
                      child: Row(
                        children: [
                          const Text(
                            "Don't have an account?",
                            style: TextStyle(color: Color(0xff828281)),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) =>
                                            const Signup())));
                              },
                              child: const Text(
                                "Signup",
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
