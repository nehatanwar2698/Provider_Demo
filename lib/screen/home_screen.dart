import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/counter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      var pro = Provider.of<Counter>(context, listen: false);
      pro.addCounter();
    });
  }

  @override
  Widget build(BuildContext context) {
    int itemCount = Provider.of<Counter>(context).getCounter;
    print("build------ ${count.toString()}");
    return Scaffold(
        appBar: AppBar(title: const Text("Provider State Management")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Counter implement using provider",
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(
                height: 24,
              ),
              Consumer<Counter>(builder: (context, value, child) {
                return Text(
                  value.getCounter.toString(),
                  style: const TextStyle(fontSize: 22),
                );
              }),
              const SizedBox(
                height: 24,
              ),
              const Text(
                "increase/Decrease Counter using button",
                style: TextStyle(fontSize: 18),
              ),
              // Text(
              //   itemCount.toString(),
              //   style: TextStyle(fontSize: 24),
              // ),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: () {
                Provider.of<Counter>(context, listen: false).decreaseCounter();
              },
              child: const Text("Minus"),
            ),
            FloatingActionButton(
              onPressed: () {
                Provider.of<Counter>(context, listen: false).addCounter();
              },
              child: Text("Add"),
            ),
          ],
        ));
  }
}
