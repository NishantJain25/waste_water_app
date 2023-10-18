import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

class Gallery extends StatefulWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  List<String> images = [
    "images/image-1.jpg",
    "images/image-1.jpg",
    "images/image-1.jpg",
    "images/image-1.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
          itemCount: images.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 0,
          ),
          itemBuilder: (context, index) {
            return FullScreenWidget(
                disposeLevel: DisposeLevel.Low,
                child: Image.asset(
                  images[index],
                  fit: BoxFit.contain,
                ));
          }),
    );
  }
}
