import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:togglescreenprovider/toggle_provider.dart';
import 'package:togglescreenprovider/togglescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ToggleProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ToggleScreen(),
      ),
    );
  }
}
      