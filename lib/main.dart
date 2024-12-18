import 'package:flutter/material.dart';
import 'package:flutter_sidemu/widgets/slider.dart';
import 'widgets/header.dart';
import 'widgets/content.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cartridge Kings',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWidget(),
            SizedBox(height: 40,),
            ContentWidget(),
            SizedBox(height: 50,),
            ProductSlider(),
            SizedBox(height: 70,)
          ],
        ),
      ),
    );
  }
}
