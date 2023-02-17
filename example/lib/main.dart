import 'package:fatiyazdistate/fatiyazdistate.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const FatiYazdiState(child: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) => const MaterialApp(home: FirstScreen());
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plugin example app'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("First Screen"),
            ElevatedButton(
              child: const Text('Yeni Sayfa'),
              onPressed: () =>
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const MyTestPage())),
            ),
          ],
        ),
      ),
    );
  }
}

class MyTestPage extends StatefulWidget {
  const MyTestPage({Key? key}) : super(key: key);

  @override
  State<MyTestPage> createState() => _MyTestPageState();
}

class _MyTestPageState extends State<MyTestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Second Screen"),
            ElevatedButton(
                onPressed: () => FatiYazdiState.fatihStateCreateAgain(context), child: const Text("Restart App")),
          ],
        ),
      ),
    );
  }
}
