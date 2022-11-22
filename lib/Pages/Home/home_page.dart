import 'package:flutter/material.dart';

import 'package:fluttersample/Pages/Home/one_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4, // 1行に表示する数
      crossAxisSpacing: 2, // 縦スペース
      mainAxisSpacing: 6.0, // 横スペース
      shrinkWrap: false,
      children: List.generate(10, (index) {
        return Container(
            padding: const EdgeInsets.all(10.0),
            alignment: Alignment.center,
            child: GridTile(
              child: OneWidget(index.toString()),
            ));
      }),
    );
  }
}
