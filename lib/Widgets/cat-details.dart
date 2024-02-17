import 'package:flutter/material.dart';
import 'package:my_cats/model/cat.dart';

class CatDetailsWidget extends StatefulWidget {
  final Cat cat;

  const CatDetailsWidget({super.key, required this.cat});

  @override
  State<CatDetailsWidget> createState() => _CatDetailsWidgetState();
}

class _CatDetailsWidgetState extends State<CatDetailsWidget> {
  bool isNameColored = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(widget.cat.imageLink),
        Text(
          widget.cat.name,
          style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: isNameColored ? Colors.deepPurple : Colors.black),
        ),
        Text('Origin: ${widget.cat.origin}'),
        Text('Max Widget: ${widget.cat.maxWeight}'),
        Text('Min Widget: ${widget.cat.minWeight}'),
        Text('Length: ${widget.cat.length}'),
        ElevatedButton(
            onPressed: () {
              setState(() {
                isNameColored = !isNameColored;
              });
            },
            child: Text('Change Name Color:'))
      ],
    );
  }
}
