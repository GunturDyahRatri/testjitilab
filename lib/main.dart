import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testjitilab/pages/home_page.dart';
// import 'package:testjitilab/pages/splashscreen.dart';
import 'package:testjitilab/provider/contact_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ContactProvider(),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.grey,
        ),
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
      ),
    );
  }
}
