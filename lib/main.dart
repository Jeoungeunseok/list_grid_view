import 'package:flutter/material.dart';
import 'package:list_grid_view/views/grid_view.dart';
import 'package:list_grid_view/views/list_view.dart';

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
      initialRoute: '/',
      routes: {
        '/': (context) => const ViewsetState(),
        '/list_view': (context) => const ListViewSetState(),
        '/grid_view': (context) => const GridViewSetState(),
      },
    );
  }
}

class ViewsetState extends StatefulWidget {
  const ViewsetState({super.key});

  @override
  State<ViewsetState> createState() => _ViewsetStateState();
}

class _ViewsetStateState extends State<ViewsetState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text('Nuridal Class: Views',
                style: TextStyle(fontSize: 20))),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/list_view');
                },
                child: const Text('listview_page'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/grid_view');
                },
                child: const Text('gridview_page'),
              )
            ])));
  }
}
