// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailPage extends StatelessWidget {
  // const DetailPage({Key? key}) : super(key: key);
  DetailPage(this.heroTag, {Key? key}) : super(key: key);

  String heroTag; //content_pageと共有するTag

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'ani' + heroTag,
      child: Scaffold(
        backgroundColor: Colors.transparent, //Widgetの全体の背景を透明にする

        // backgroundColor: const Color.fromARGB(255, 16, 16, 16),
        body: GestureDetector(
          // 下にスワイプで戻る
          onVerticalDragEnd: (details) {
            if (details.primaryVelocity! > 0) {
              Navigator.pop(
                context,
              );
            }
          },
          child: Container(
            color: const Color.fromARGB(255, 48, 48, 48),
            child: Column(
              children: <Widget>[
                Expanded(
                  // color: Colors.transparent,
                  child: imageContents(context),
                ),
                const Expanded(
                  // width: 100,
                  // color: Colors.green,
                  child: Text(
                    'content',
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  ),
                ),
                // Container(
                //   padding: const EdgeInsets.all(25),
                //   child: Center(
                //     child: RaisedButton(
                //       child: const Icon(
                //         Icons.close_sharp,
                //         color: Colors.black,
                //         size: 55,
                //       ),
                //       color: const Color.fromARGB(255, 25, 226, 214),
                //       shape: const CircleBorder(),
                //       onPressed: () {
                //         Navigator.pop(
                //           context,
                //         );
                //       },
                //     ),
                //   ),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }

  // 画像Widget
  Widget imageContents(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      // height: 400,
      child: Stack(
        children: <Widget>[
          Image.asset(
            'images/' + heroTag + '.jpeg',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
