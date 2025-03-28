import 'package:fasum/screens/sign_in_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Future<void>signout(BuildContext context)async{
    await FirebaseAuth.instance.signOut();


    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context)=>SignInScreen())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: const Text('Home'),
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      actions: [
        IconButton(onPressed: (){
          signout(context);
        },
        icon: const Icon(Icons.logout),
        )
      ],
    ),
    body: const Center(
      child: Text('you have logged in'),
    ),
  );
  }
}