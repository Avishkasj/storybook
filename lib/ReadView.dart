import 'package:flutter/material.dart';

class ReadView extends StatefulWidget {
  const ReadView({Key? key}) : super(key: key);

  @override
  State<ReadView> createState() => _ReadViewState();
}

class _ReadViewState extends State<ReadView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(47, 114, 100, 1),
      ),
      body: Column(
        children: [
          Text("data"),
        ],
      ),
    );
  }
}
