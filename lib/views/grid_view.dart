import 'package:flutter/material.dart';
import 'package:list_grid_view/utils/assets_list.dart';

class GridViewSetState extends StatefulWidget {
  const GridViewSetState({super.key});

  @override
  State<GridViewSetState> createState() => _GridViewSetState();
}

class _GridViewSetState extends State<GridViewSetState> {
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
            title: const Text('Nuridal Class: Gridview',
                style: TextStyle(fontSize: 20))),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              SizedBox(
                height: 400,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1 / 1,
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 0,
                  ),
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
