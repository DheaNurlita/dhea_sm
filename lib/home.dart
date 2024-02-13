import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});

  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home View'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(count.toString()),
              Text(count.toString()),
              ElevatedButton(
                onPressed: () {
                  var rxCount = count + 1;
                  debugPrint(rxCount.toString());
                },
                child: const Text(
                  "Tambah",
                ),
              ),
            ],
          ),
        ));
  }
}
