import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/counter.dart';
import 'package:state_management/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //** it observe changes and notify */

    return ChangeNotifierProvider(
        create: (_) => Counter(),
        child: Builder(builder: (BuildContext context) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: HomePage(),
          );
        }));
  }
}
