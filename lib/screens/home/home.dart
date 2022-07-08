import 'package:brew_crew/services/auth.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade50,
      appBar: AppBar(
        title: Text('Brew Crew'),
        backgroundColor: Colors.brown.shade400,
        elevation: 0.0,
        actions: [
          TextButton.icon(
            icon: Icon(Icons.person),
            label: Text('logout'),
            style: TextButton.styleFrom(
                primary: Colors.black87,
                padding: EdgeInsets.symmetric(horizontal: 15.0)),
            onPressed: () async {
              await _auth.signOut();
            },
          )
        ],
      ),
    );
  }
}
