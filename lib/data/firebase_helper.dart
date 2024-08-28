import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FirebaseHelper {
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<dynamic> signUp(String email, String password, String name) async {
    try {
      UserCredential user = await auth.createUserWithEmailAndPassword(
          email: email, password: password);

      await auth.currentUser!.updateDisplayName(name);

      await auth.currentUser!.reload();

      if (user.user != null) {
        return user.user;
      }
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<dynamic> signIn(String email, String password) async {
    try {
      UserCredential user = await auth.signInWithEmailAndPassword(
          email: email, password: password);

      if (user.user != null) {
        return user.user;
      }
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<void> signOut() async {
    await auth.signOut();
  }
}
/*
// sign up func
Future<void> signUpParameter() async {
  if (formkey.currentState!.validate()) {
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        });
    FireBaseHelper()
        .signUp(
            emailController.text.toString(),
            passwordController.text.toString(),
            userNameController.text.toString())
        .then((value) {
      if (value is User) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const Home()));
      } else if (value is String) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(value)));
        Navigator.pop(context);
      }
    });
  }
}


// sign in func
Future<void> signInParameter() async {
  if (formkey.currentState!.validate()) {
    showDialog(
        FireBaseHelper()
            .signIn(emailController.text.toString(),
                passwordController.text.toString())
            .then((value) {
          if (value is User) {
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Hello ${value.displayName}")));
            Navigator.of(context)
                .pushReplacement(MaterialPageRoute(
                    builder: (context) => const Home()));
          } else if (value is String) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(value)));
            Navigator.pop(context);
          }
        }));
  }
}

// sign out button 
IconButton(
onPressed: () {
FireBaseHelper().signOut();
Navigator.of(context).pushReplacement(
MaterialPageRoute (builder: (context) => const SignIn()));
},
icon: const Icon (Icons.logout,color: Colors.black),)
*/