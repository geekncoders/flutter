import 'package:flutter/material.dart';

void main() => runApp(NinjaApp());

class NinjaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          backgroundColor: Colors.grey[850],
          title: const Text('Ninja App'),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/ninja.jpg'),
                  radius: 60.0,
                ),
              ),
              const Divider(
                height: 60.0,
                color: Colors.white,
              ),
              Text(
                'NAME',
                style: TextStyle(
                  color: Colors.grey[100],
                  letterSpacing: 2.0,
                ),
              ),
              const Text(
                'Adnan Ahmad Siddique',
                style: TextStyle(
                  color: Colors.white38,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                ),
              ),
              const SizedBox(height: 10.0),
              Text(
                'LEVEL',
                style: TextStyle(
                  color: Colors.grey[100],
                  letterSpacing: 2.0,
                ),
              ),
              const Text(
                '8',
                style: TextStyle(
                  color: Colors.white38,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                ),
              ),
              const SizedBox(height: 10.0),
              Row(
                children: [
                  Icon(Icons.email, color: Colors.grey[800]),
                  const SizedBox(width: 10.0,),
                  const Text(
                    'adnanhmd000@gmail.com',
                    style: TextStyle(color: Colors.white38, fontSize: 28.0),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
