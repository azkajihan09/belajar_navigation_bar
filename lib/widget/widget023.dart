import 'package:flutter/material.dart';

class Widget023 extends StatefulWidget {
  Widget023({Key? key}) : super(key: key);

  @override
  State<Widget023> createState() => _Widget023State();
}

class _Widget023State extends State<Widget023> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text("Widget 23"),
          ],
        ),
      ),
      body: Data(),
    );
  }
}

class Data extends StatelessWidget {
  const Data({Key? key}) : super(key: key);

  static const List<String> listItems = <String>[
    'apple',
    'banana',
    'melon',
  ];

  @override
  Widget build(BuildContext context) {
    return Autocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text == '') {
          return const Iterable<String>.empty();
        }
        return listItems.where((String item) {
          return item.contains(textEditingValue.text.toLowerCase());
        });
      },
      onSelected: (String item) {
        print('The $item was selected');
      },
    );
  }
}
