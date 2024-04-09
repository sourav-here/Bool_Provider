import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerbool/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Click(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Consumer<Click>(builder: (context, clicked, child) {
              return Container(
                  child: clicked.isCliked == false
                      ? const Icon(Icons.person)
                      : const CircularProgressIndicator());
            }),
            Consumer<Click>(builder: (context, clicked, child) {
              return ElevatedButton(
                onPressed: () {
                  clicked.clicked();
                },
                style: ButtonStyle(
                    backgroundColor: clicked.isCliked == false
                        ? const MaterialStatePropertyAll(Colors.blue)
                        : const MaterialStatePropertyAll(Colors.red)),
                child: Consumer<Click>(
                  builder: (context, clicked, child) {
                    return Text(clicked.isCliked == false ? 'Start' : 'Stop');
                  },
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
