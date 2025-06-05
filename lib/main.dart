import 'package:basketball_app/widgets/counter_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int teamAPoints = 0;
  int teamBPoints = 0;

  void increment(int num, String AB) {
    setState(() {
      switch (AB) {
        case 'A':
          teamAPoints += num;
          break;
        case 'B':
          teamBPoints += num;
          break;
      }
    });
  }

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
                    Text(
                      '$teamAPoints',
                      style: const TextStyle(
                        fontSize: 150,
                      ),
                    ),
                    CounterButton(
                        text: 'Add 1 Point', fun: () => increment(1, 'A')),
                    const SizedBox(
                      height: 16,
                    ),
                    CounterButton(
                      text: 'Add 2 Point', fun: () => increment(2, 'A')),
                    const SizedBox(
                      height: 16,
                    ),
                    CounterButton(
                      text: 'Add 3 Point', fun: () => increment(3, 'A')),
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
                    Text(
                      '$teamBPoints',
                      style: const TextStyle(
                        fontSize: 150,
                      ),
                    ),
                    CounterButton(
                      text: 'Add 1 Point', fun: () => increment(1, 'B')),
                    const SizedBox(
                      height: 16,
                    ),
                    CounterButton(
                      text: 'Add 2 Point', fun: () => increment(2, 'B')),
                    const SizedBox(
                      height: 16,
                    ),
                    CounterButton(
                      text: 'Add 3 Point', fun: () => increment(3, 'B')),
                  ],
                ),
              ],
            ),
            const Spacer(),
            CounterButton(
              text: 'Add 1 Point',
              fun: () {
                setState(() {
                  teamAPoints++;
                  teamBPoints++;
                });
              },
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
