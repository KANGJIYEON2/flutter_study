import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/feed.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      "https://cdn.pixabay.com/photo/2016/02/18/18/37/puppy-1207816_1280.jpg",
      "https://cdn.pixabay.com/photo/2016/03/27/20/51/dogs-1284238_1280.jpg",
      "https://cdn.pixabay.com/photo/2014/09/19/21/47/chihuahua-453063_1280.jpg",
      "https://cdn.pixabay.com/photo/2020/08/12/09/42/dog-5482171_1280.jpg",
      "https://cdn.pixabay.com/photo/2022/01/17/19/59/dog-6945696_1280.jpg",
      "https://cdn.pixabay.com/photo/2022/07/18/19/57/dog-7330712_1280.jpg",
      "https://cdn.pixabay.com/photo/2020/11/12/15/45/dog-5735837_1280.jpg",
    ];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(CupertinoIcons.camera, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.paperplane, color: Colors.black),
            onPressed: () {},
          )
        ],
        title: Image.asset(
          'assets/insta.png',
          height: 32,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) {
          String image = images[index];
          return Feed(
            imageUrl: image,
          );
        },
      ),
    );
  }
}
