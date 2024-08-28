import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_13/screens/home_page.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => signupstate();
}

class signupstate extends State<signup> {
  bool ispressed = false;
  bool pressed = false;

  final cx3 = GlobalKey<FormState>();
  final _controller = TextEditingController();
  String _errorMessage = '';

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
              padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 16),
              child: Form(
                key: cx3,
                child: Column(
                  mainAxisSize: MainAxisSize
                      .min, //column occupies space as much as children need
                  children: <Widget>[
                    Center(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: (MediaQuery.of(context).size.height) * 0.3,
                          width: (MediaQuery.of(context).size.width) * 1,
                          // ,
                          color: Color.fromARGB(255, 0, 0, 0),
                          child: Center(
                              child: Image.asset(
                            fit: BoxFit.cover,
                            'assets/images/typing.gif',
                          )
                              // height: 150, width: 800, scale: 1),
                              ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 6.0),
                    const Text(
                      'Sign Up',
                      style: TextStyle(
                          fontSize: 44,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
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
                        labelText: 'Name',
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(34.0)),
                        ),
                      ),
                      // inputFormatters: [
                      //   FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]')),
                      // ],
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        setState(() {
                          if (RegExp(r'[^a-zA-Z]').hasMatch(value)) {
                            _errorMessage = 'Please enter letters only';
                          } else {
                            _errorMessage = '';
                          }
                        });
                      },
                    ),
                    if (_errorMessage.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          textAlign: TextAlign.left,
                          _errorMessage,
                          style: TextStyle(
                              color: const Color.fromARGB(255, 244, 238, 54)),
                        ),
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
                          if (value == null || value.isEmpty)
                            return 'Please enter your Username';
                          else
                            return null;
                        }),
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
                        if (value == null || value.isEmpty)
                          return 'Please enter your Email';
                        else
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
                        if (value.length < 8) {
                          return 'Please enter at least 8 characters';
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
                        labelText: 'Re-enter Password',
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
                          return 'Please re-enter your password';
                        }

                        return null;
                      },
                    ),
                    const SizedBox(height: 36.0),
                    ElevatedButton(
                      style: ButtonStyle(
                        overlayColor: WidgetStateProperty.resolveWith<Color?>(
                          (Set<WidgetState> states) {
                            if (states.contains(WidgetState.hovered)) {
                              return const Color.fromARGB(255, 98, 65, 187);
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
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                      },
                      child: const Text(
                        'Create Account!',
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    // TextButton(
                    //   onPressed: () {},
                    //   style: ButtonStyle(
                    //     overlayColor: WidgetStateProperty.resolveWith<Color?>(
                    //       (Set<WidgetState> states) {
                    //         if (states.contains(WidgetState.hovered)) {
                    //           return const Color.fromARGB(255, 204, 81, 28);
                    //         }
                    //         return null;
                    //       },
                    //     ),
                    //   ),
                    //   child: const Text(
                    //     'Sign up',
                    //     style: TextStyle(
                    //       color: Color.fromARGB(255, 255, 255, 255),
                    //       fontSize: 18,
                    //     ),
                    //   ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
