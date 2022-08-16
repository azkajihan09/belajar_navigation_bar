import 'package:flutter/material.dart';

class Widget029 extends StatefulWidget {
  const Widget029({Key? key}) : super(key: key);

  @override
  State<Widget029> createState() => _Widget029State();
}

class _Widget029State extends State<Widget029> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text("Modal Bottom Sheet"),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) => SizedBox(
                    height: 300,
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Close'),
                      ),
                    ),
                  ));
        },
      ),
    );
  }
}
