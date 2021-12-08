import 'package:flutter/material.dart';

void main() => runApp(NinjaApp());

class NinjaApp extends StatefulWidget {
  @override
  _NinjaAppState createState() => _NinjaAppState();
}

class _NinjaAppState extends State<NinjaApp> {
  int ninjaLevel = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: const Text('Statefull Ninja App'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              ninjaLevel += 1;
            });
          },
          backgroundColor: Colors.grey[800],
          child: const Icon(Icons.add),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
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
                color: Colors.white38,
              ),
              Text(
                'NAME',
                style: TextStyle(
                  color: Colors.grey[800],
                  letterSpacing: 2.0,
                ),
              ),
              Text(
                'Adnan Ahmad Siddique',
                style: TextStyle(
                  color: Colors.grey[100],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                'NINJA LEVEL',
                style: TextStyle(
                  color: Colors.grey[800],
                  letterSpacing: 2.0,
                ),
              ),
              Text(
                '$ninjaLevel',
                style: TextStyle(
                  color: Colors.grey[100],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.grey[800],
                  ),
                  const Text(
                    'adnanhmd000@gmail.com',
                    style: TextStyle(
                      color: Colors.white38,
                    ),
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
