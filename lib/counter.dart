import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int x = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Increment"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          x++;
        });
      }),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              x.toString(),
              style: TextStyle(fontSize: 90),
            ),
          ]),
    );
  }
}
