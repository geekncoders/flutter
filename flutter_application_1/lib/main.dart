import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Title Bar'),
        ),
        body: Row(
          children: [
            Expanded(
              flex: 2,
              child: Image.asset('assets/img-1.jpg')),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Text('1'),
                color: Colors.red,
              ),
              ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(5),
                child: Text('2'),
                color: Colors.red,
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Text('3'),
                color: Colors.red,
              ),
            ),
          ],
        ),


        // body: Column(
        //   mainAxisAlignment: MainAxisAlignment.end,
        //   crossAxisAlignment: CrossAxisAlignment.stretch,
        //   children: [
        //     Row(
        //       children: [
        //         Text('Hello'),
        //         Text('World'),
        //       ],
        //     ),
        //     const Text('Column1'),
        //     ElevatedButton(onPressed: () {},
        //      child: const Text('Button')
        //      ),
        //   ],
        // ),

        
        // body: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   children: [
        //     const Text('Here'),
        //     ElevatedButton(
        //       onPressed: () {},
        //       child: const Text('Button')
        //      ),
        //     Container(
        //       child: const Text('Container'),
        //     )
        //   ],
        // ),

        // body: Container(
        //   color: Colors.grey[400],
        //   margin: const EdgeInsets.all(20),
        // ),


        // body: Center(
        //   child: IconButton(
        //     onPressed: () {
        //       print('Clicked');
        //     },
        //     icon: const Icon(
        //       Icons.mail,
        //     ),
        //   ),


        // child: ElevatedButton.icon(
        //   onPressed: () {},
        //   icon: const Icon(Icons.mail),
        //   label: const Text('Mail Me'),
        // ),
        // child: TextButton(
        //   onPressed: () {},
        //   child: Text('Press here'),
        //   style: TextButton.styleFrom(
        //     textStyle: const TextStyle(fontSize: 20),
        //   ),
        // ),
        // ),

        // child: ElevatedButton(
        //   onPressed: () {
        //     print('Hi');
        //   },
        //   child: const Text(
        //     'Click Me',
        //     style: TextStyle(
        //       color: Colors.white,
        //     ),
        //   ),

        // child: (
        //   Icons.headphones_battery,
        //   color: Colors.red,
        //   size: 50,
        // ),

        // child: Image.network('https://hotpot.ai/designs/thumbnails/splash-screen/10.jpg'),
        // child: Image.asset('assets/img-1.jpg'),
        // child: Image(
        //   image: AssetImage('assets/img-1.jpg'),
        // ),

        // child: Image(
        //   image: NetworkImage('https://hotpot.ai/designs/thumbnails/splash-screen/10.jpg'),
        // ),

      ),
    );
  }
}
