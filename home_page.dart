import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {

              },
              child: const Text('Food Delivery'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: (){
              },
              child: const Text('Logistics Delivery'),
            )
          ],
        ),
      ),
    );
  }
}