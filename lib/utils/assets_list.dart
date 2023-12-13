import 'dart:convert';

import 'package:flutter/services.dart';

Future<List<String>> loadAssetsImages({
  required String path,
  required String extension,
}) async {
  final manifestContent = await rootBundle.loadString('AssetManifest.json');
  final Map<String, dynamic> manifestMap =
      Map<String, dynamic>.from(json.decode(manifestContent));

  List<String> imagePaths = manifestMap.keys.where((String key) {
    return key.startsWith(path) && key.toLowerCase().endsWith(extension);
  }).toList();

  return imagePaths;
}
