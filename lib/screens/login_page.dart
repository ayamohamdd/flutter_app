import 'package:flutter/material.dart';
import 'package:flutter_application_13/screens/home_page.dart';

class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => loginpagestate();
}

class loginpagestate extends State<login_page> {
  bool ispressed = false;
  bool pressed = false;

  final cx3 = GlobalKey<FormState>();
  final _controller = TextEditingController();
  final _errorMessage = '';

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: const BoxDecoration(
      //   image: DecorationImage(
      //     image: AssetImage('girl.png'),
      //   ),
      // ),
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 7, 2, 21),
        // backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Card(
              color: const Color.fromARGB(255, 0, 0, 0),
              // shape: RoundedRectangleBorder(
              //   borderRadius: BorderRadius.circular(30.0),
              // ),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Form(
                  key: cx3,
                  child: Column(
                    mainAxisSize: MainAxisSize
                        .min, //column occupies space as much as children need
                    children: <Widget>[
                      const SizedBox(height: 6),
                      Image.asset('assets/images/hola.gif',
                          height: 250, width: 500),
                      const SizedBox(height: 6.0),
                      const Text(
                        'Welcome Back!',
                        style: TextStyle(
                            fontSize: 44,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(height: 16.0),
                      TextFormField(
                        keyboardType: TextInputType.name,
                        style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                        ),
                        decoration: const InputDecoration(
                          errorStyle: TextStyle(
                              color: Color.fromARGB(255, 255, 117, 177)),
                          errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Color.fromARGB(255, 255, 117, 177),
                          )
                              // width: 2.0),
                              ),
                          focusedErrorBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(34.0)),
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 255, 208, 40),
                              )
                              // width: 2.0),
                              ),
                          labelText: 'Username',
                          labelStyle: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(34.0)),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16.0),
                      TextFormField(
                        style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                        ),
                        decoration: const InputDecoration(
                          errorStyle: TextStyle(
                              color: Color.fromARGB(255, 255, 117, 177)),
                          errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Color.fromARGB(255, 255, 117, 177),
                          )
                              // width: 2.0),
                              ),
                          focusedErrorBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(34.0)),
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 255, 208, 40),
                              )
                              // width: 2.0),
                              ),
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(34.0))),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your Email';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16.0),
                      TextFormField(
                        style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                        ),
                        decoration: const InputDecoration(
                          errorStyle: TextStyle(
                              color: Color.fromARGB(255, 255, 117, 177)),
                          errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Color.fromARGB(255, 255, 117, 177),
                          )
                              // width: 2.0),
                              ),
                          focusedErrorBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(34.0)),
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 255, 208, 40),
                              )
                              // width: 2.0),
                              ),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(34.0))),
                        ),
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16.0),
                      ElevatedButton(
                        style: ButtonStyle(
                          overlayColor: WidgetStateProperty.resolveWith<Color?>(
                            (Set<WidgetState> states) {
                              if (states.contains(WidgetState.hovered)) {
                                return const Color.fromARGB(255, 218, 40, 126);
                              }
                              return null;
                            },
                          ),
                        ),
                        // onHover: (){},
                        onPressed: () {
                          if (cx3.currentState!.validate())
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                            );
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          overlayColor: WidgetStateProperty.resolveWith<Color?>(
                            (Set<WidgetState> states) {
                              if (states.contains(WidgetState.hovered)) {
                                return const Color.fromARGB(255, 190, 165, 0);
                              }
                              return null;
                            },
                          ),
                        ),
                        child: const Text(
                          'Sign up',
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}