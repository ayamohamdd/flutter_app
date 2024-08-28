import 'package:flutter/material.dart';
import 'package:flutter_application_13/screens/login_page.dart';
import 'package:flutter_application_13/screens/sign_up.dart';

class welcome extends StatefulWidget {
  const welcome({super.key});

  @override
  State<welcome> createState() => welcomestate();
}

class welcomestate extends State<welcome> {
  bool ispressed = false;
  bool pressed = false;
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
                child: Column(
                  mainAxisSize: MainAxisSize
                      .min, //el column occupie space as much as children need
                  children: <Widget>[
                    const SizedBox(height: 6),
                    Image.asset('assets/images/analysis.gif',
                        height: 250, width: 500),
                    const SizedBox(height: 6.0),
                    const Text(
                      'Hey There!',
                      style: TextStyle(
                          fontSize: 44,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(height: 16.0),
                    Center(
                      child: Text(
                        '''Welcome to CX3's very own car prediction
         mobile application utilizing AI!''',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                    const SizedBox(height: 36.0),
                    Center(
                      child: Text(
                        '''Would you like to : ''',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: const Color.fromARGB(255, 236, 110, 110),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    ElevatedButton(
                      style: ButtonStyle(
                        overlayColor: WidgetStateProperty.resolveWith<Color?>(
                          (Set<WidgetState> states) {
                            if (states.contains(WidgetState.hovered)) {
                              return const Color.fromARGB(255, 173, 225, 212);
                            }
                            return null;
                          },
                        ),
                      ),
                      // onHover: (){},
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => login_page()),
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => signup()),
                        );
                      },
                      style: ButtonStyle(
                        overlayColor: WidgetStateProperty.resolveWith<Color?>(
                          (Set<WidgetState> states) {
                            if (states.contains(WidgetState.hovered)) {
                              return const Color.fromARGB(255, 93, 160, 236);
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
    );
  }
}
