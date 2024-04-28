import 'package:flutter/material.dart';
import 'package:untitled3/nav_bar.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Beauty Of Nature'),
        backgroundColor: Colors.greenAccent,
      ),
      body:   Column(
        children: [
          const SizedBox(height: 15,),
          const Text('Welcome To The Beauty Of Nature',
            style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 20),),

          const SizedBox(height: 20,),
          const Text('Explore The Beauty Of The World',
            style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 20),),
           const SizedBox(height: 10,),
           const Row(mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Icon(Icons.emoji_nature_outlined),
               Icon(Icons.emoji_nature_outlined),
               Icon(Icons.emoji_nature_outlined),
               Icon(Icons.emoji_nature_outlined),
             ],
           ),
           const SizedBox(height: 30,),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               height: 300,
              width: 500,
              child: const Image(image: AssetImage('assets/background.jpg'),
                fit: BoxFit.fill,
              ),
                       ),

           ),
          const SizedBox(height: 30,),
          const Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.emoji_nature_outlined),
              Icon(Icons.emoji_nature_outlined),
              Icon(Icons.emoji_nature_outlined),
              Icon(Icons.emoji_nature_outlined),
            ],
          ),
          const SizedBox(height: 10,),

          const Text('Explore the places through our app,\n\nwhich you have not seen before this.',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          const SizedBox(height: 20,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Icon(Icons.nature_rounded),
               Icon(Icons.nature_rounded),
               Icon(Icons.nature_rounded),
            ],
          ),
        ],
      ),
      backgroundColor: Colors.blueGrey,
    );
  }
}

