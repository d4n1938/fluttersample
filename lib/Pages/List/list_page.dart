import 'package:flutter/material.dart';
import 'package:fluttersample/Pages/List/list_next.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 8, itemBuilder: (context, index) => const Button());
  }
}

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(const EdgeInsets.all(90.0)),
        ),
        child: const Text('list'),
        onPressed: () => {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) => const Next(),
            ),
          ),
        },
      ),
    );
  }
}
