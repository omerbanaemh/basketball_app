import 'package:basketball_app/widgets/counter_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Points Counter'),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      'Team A',
                      style: TextStyle(
                        fontSize: 42,
                      ),
                    ),
                    const Text(
                      '0',
                      style: TextStyle(
                        fontSize: 200,
                      ),
                    ),
                    CounterButton(text: 'Add 1 Point', fun: () {  },),
                    const SizedBox(
                      height: 16,
                    ),
                    CounterButton(text: 'Add 2 Point', fun: () {  },),
                    const SizedBox(
                      height: 16,
                    ),
                    CounterButton(text: 'Add 3 Point', fun: () {  },),
                  ],
                ),
                const SizedBox(
                  height: 420,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      'Team B',
                      style: TextStyle(
                        fontSize: 42,
                      ),
                    ),
                    const Text(
                      '0',
                      style: TextStyle(
                        fontSize: 200,
                      ),
                    ),
                    CounterButton(text: 'Add 1 Point', fun: () {  },),
                    const SizedBox(
                      height: 16,
                    ),
                    CounterButton(text: 'Add 2 Point', fun: () {  },),
                    const SizedBox(
                      height: 16,
                    ),
                    CounterButton(text: 'Add 3 Point', fun: () {  },),
                  ],
                ),
              ],
            ),
            const Spacer(),
            CounterButton(text: 'Add 1 Point', fun: () {  },),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

