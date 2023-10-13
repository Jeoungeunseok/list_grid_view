import 'package:flutter/material.dart';

class ListViewSetState extends StatefulWidget {
  const ListViewSetState({super.key});

  @override
  State<ListViewSetState> createState() => _ListViewSetState();
}

class _ListViewSetState extends State<ListViewSetState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text('Nuridal Class: Listview',
                style: TextStyle(fontSize: 20))),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              ListView(
                padding: const EdgeInsets.all(8),
                children: [
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: Center(child: Image.asset('assets/spiderman.PNG')),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('back_page'),
              )
            ])));
  }
}
