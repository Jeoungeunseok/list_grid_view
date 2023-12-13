import 'package:flutter/material.dart';
import 'package:list_grid_view/utils/assets_list.dart';

class ListViewSetState extends StatefulWidget {
  const ListViewSetState({super.key});

  @override
  State<ListViewSetState> createState() => _ListViewSetState();
}

class _ListViewSetState extends State<ListViewSetState> {
  List<String> imageList = [];

  @override
  void initState() {
    loadImage();
    super.initState();
  }

  void loadImage() async {
    List<String> images =
        await loadAssetsImages(path: 'assets/', extension: '.png');
    setState(() {
      imageList = images;
    });
  }

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
              SizedBox(
                height: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(8),
                  itemCount: imageList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Center(
                      child: Image.asset(imageList[index]),
                    );
                  },
                ),
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
