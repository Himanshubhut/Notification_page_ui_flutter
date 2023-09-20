import 'package:flutter/material.dart';
import 'package:loginform/home.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final GlobalKey<FormState> _key = new GlobalKey<FormState>();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  bool _issecurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 140, top: 200),
                child: const Text(
                  "Login Your\nAccount",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 45,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.4,
                      left: 50,
                      right: 50),
                  child: Form(
                      key: _key,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: emailcontroller,
                            decoration: InputDecoration(
                              fillColor:
                                  const Color.fromARGB(173, 211, 209, 209),
                              filled: true,
                              prefixIcon: const Icon(Icons.email_rounded),
                              hintText: "email",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please Enter Email ";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            controller: passwordcontroller,
                            obscureText: _issecurePassword,
                            decoration: InputDecoration(
                                fillColor:
                                    const Color.fromARGB(173, 211, 209, 209),
                                filled: true,
                                prefixIcon:
                                    const Icon(Icons.lock_outline_rounded),
                                hintText: "password",
                                suffixIcon: togglePassword(),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            validator: (value) {
                              if (value!.length < 8) {
                                return "Please Enter Minimum 8 Characters";
                              }
                              return null;
                            },
                          )
                        ],
                      )),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 305, top: 565),
                child: Row(
                  children: [
                    Text(
                      "Forgot password?",
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, top: 600),
                child: ElevatedButton(
                  onPressed: () {
                    if (_key.currentState!.validate()) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => WelcomePage(
                              email: emailcontroller.text,
                              password: passwordcontroller.text)));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      minimumSize: const Size(363, 60)),
                  child: const Text(
                    "Login",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0, top: 690),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Create New Account?",
                      style: TextStyle(fontSize: 15),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "sing up",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 150, top: 790),
                child: Row(
                  children: [
                    Text(
                      "Continue With Accounts",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 40, top: 850, right: 12, bottom: 830),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 255, 183, 207),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          minimumSize: const Size(175, 50)),
                      child: const Text(
                        "Google",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 97, 86),
                            fontSize: 20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 149, 202, 255),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          minimumSize: const Size(175, 50)),
                      child: const Text(
                        "Facebook",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 82, 176),
                            fontSize: 20),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )),
    ));
  }

  Widget togglePassword() {
    ;
    return IconButton(
        onPressed: () {
          setState(() {
            _issecurePassword = !_issecurePassword;
          });
        },
        icon: _issecurePassword
            ? const Icon(Icons.visibility)
            : const Icon(Icons.visibility_off));
  }
}
