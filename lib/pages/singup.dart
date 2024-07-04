import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SingUp extends StatefulWidget {
  const SingUp({super.key});

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  String email = '', password = '', name = '', confirmPassword = '';
  TextEditingController mailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  // registration() async {
  //   if (password != null && password == confirmPassword) {
  //     try {
  //       UserCredential userCredential = await FirebaseAuth.instance
  //           .createUserWithEmailAndPassword(email: email, password: password);
  //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //           content: Text(
  //         'Registred Succesfully',
  //         style: TextStyle(fontSize: 20),
  //       )));
  //     } on FirebaseAuthException catch (e) {
  //       if (e.code == 'weak-password') {
  //         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //             backgroundColor: Colors.orange,
  //             content: Text(
  //               'Password Provided is too Weak',
  //               style: TextStyle(fontSize: 18),
  //             )));
  //       } else if (e.code == 'email-alredy-in-use') {
  //         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //             backgroundColor: Colors.orange,
  //             content: Text(
  //               'Account alredy exists',
  //               style: TextStyle(fontSize: 18),
  //             )));
  //       }
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 4.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [
                    Color.fromARGB(255, 172, 129, 240),
                    Color(0xFF6380fb)
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                  borderRadius: BorderRadius.vertical(
                      bottom: Radius.elliptical(
                          MediaQuery.of(context).size.width, 105.0))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Center(
                    child: Column(
                      children: [
                        const Text(
                          'SingUp',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold),
                        ),
                        const Center(
                          child: Text(
                            'Create a new account',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 20.0),
                          child: Material(
                            borderRadius: BorderRadius.circular(20),
                            elevation: 5.0,
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 30.0, horizontal: 20.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Form(
                                key: _formKey,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Name',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(left: 10),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              width: 1.0,
                                              color: Colors.black38)),
                                      child: TextFormField(
                                        controller: mailController,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please Enter Name';
                                          }
                                          return null;
                                        },
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          prefixIcon: Icon(
                                            Icons.person_outlined,
                                            color: Color.fromARGB(
                                                255, 172, 129, 240),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      'Email',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(left: 10),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              width: 1.0,
                                              color: Colors.black38)),
                                      child: const TextField(
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          prefixIcon: Icon(
                                            Icons.email,
                                            color: Color.fromARGB(
                                                255, 172, 129, 240),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      'Password',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(left: 10),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              width: 1.0,
                                              color: Colors.black38)),
                                      child: const TextField(
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          prefixIcon: Icon(
                                            Icons.password,
                                            color: Color.fromARGB(
                                                255, 172, 129, 240),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      'Confirm password',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(left: 10),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              width: 1.0,
                                              color: Colors.black38)),
                                      child: const TextField(
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          prefixIcon: Icon(
                                            Icons.password,
                                            color: Color.fromARGB(
                                                255, 172, 129, 240),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const SizedBox(
                                      height: 20.0,
                                    ),
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Don't have account?",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Sign Up Now",
                                          style: TextStyle(
                                              color: Color(0xFF7f30FE),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            width: MediaQuery.of(context).size.width,
                            child: Material(
                              elevation: 5.0,
                              child: Center(
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF6380fb),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Center(
                                    child: Text('SIGN UP',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
