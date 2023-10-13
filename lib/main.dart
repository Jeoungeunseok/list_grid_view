import 'package:flutter/material.dart';

void main() {
  runApp(const Views());
}

class Views extends StatelessWidget {
  const Views({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nuridal Class',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ViewsetState(title: 'Nuridal Class: ListView'),
    );
  }
}

class ViewsetState extends StatefulWidget {
  const ViewsetState({super.key, required this.title});

  final String title;

  @override
  State<ViewsetState> createState() => _ViewsetStateState();
}

class _ViewsetStateState extends State<ViewsetState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text(widget.title, style: const TextStyle(fontSize: 20))),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[])));
  }
}
