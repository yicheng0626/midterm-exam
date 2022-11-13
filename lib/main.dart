// main.dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'KindaCode.com',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('410637085林奕成')),
      body: Center(
        child: SizedBox(
          width: 300,
          height: 340,
          child: Card(
            elevation: 6,
            color: Colors.amber.shade100,
            semanticContainer: true,
            // Implement InkResponse
            child: InkResponse(
              containedInkWell: true,
              highlightShape: BoxShape.rectangle,
              onTap: () {
                
                // Clear all showing snack bars
                ScaffoldMessenger.of(context).clearSnackBars();
                // Display a snack bar
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("我覺得好看的圖片!"),
                ));
              },
              // Add image & text
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Ink.image(
                      width: double.infinity,
                      height: 240,
                      fit: BoxFit.cover,
                      image: const NetworkImage(
                          'https://thumbs.dreamstime.com/b/rainbow-love-heart-background-red-wood-60045149.jpg')),
                  const Text(
                    '一張圖片',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}