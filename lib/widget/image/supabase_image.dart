import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:nectar/core/app_locator.dart';
import 'package:nectar/core/service/storage_service.dart';

class SupabaseImage extends StatelessWidget {
  final String path;
  final double? height;
  final double? width;
  final BoxFit? boxFit;
  const SupabaseImage(
      {super.key, required this.path, this.height, this.width, this.boxFit});

  @override
  Widget build(BuildContext context) {
    final storageService = locator<StorageService>();
    final image = storageService.getImage(path);
    log("This is the image " + image.toString());
    return Image.network(image,
        height: height, width: width, fit: boxFit);
  }
}
