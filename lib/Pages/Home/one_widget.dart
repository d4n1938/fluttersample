import 'package:flutter/material.dart';

import 'content_page.dart';

// ignore: must_be_immutable
class OneWidget extends StatefulWidget {
  OneWidget(this.heroTag, {Key? key}) : super(key: key);

  String heroTag; //content_pageと共有するTag

  @override
  State<StatefulWidget> createState() {
    // ignore: no_logic_in_create_state
    return _OneWidgetState(heroTag);
  }
}

class _OneWidgetState extends State<OneWidget> {
  var _hasPadding = false;

  _OneWidgetState(this.heroTag);

  String heroTag;
  // var _hasPadding = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedPadding(
      duration: const Duration(milliseconds: 80),
      padding: EdgeInsets.all(_hasPadding ? 10 : 0),
      child: Center(
          child: GestureDetector(
        onTapDown: (TapDownDetails downDetails) {
          setState(() {
            _hasPadding = true;
          });
        },
        onTap: () {
          // ignore: avoid_print
          print('Card tapped.');
          setState(() {
            _hasPadding = false;
          });
          Navigator.push(
              context,
              PageRouteBuilder(
                transitionDuration: const Duration(milliseconds: 500),
                pageBuilder: (_, __, ___) => DetailPage(heroTag),
              ));
        },
        onTapCancel: () {
          setState(() {
            _hasPadding = false;
          });
        },
        child: Hero(
          tag: 'ani' + heroTag,
          child: Container(
            clipBehavior: Clip.antiAlias,
            // margin: const EdgeInsets.all(10),
            // width: 10,
            // height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                image: AssetImage('images/' + heroTag + '.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      )),
    );
  }
}
