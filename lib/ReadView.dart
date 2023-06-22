import 'package:flutter/material.dart';

class ReadView extends StatefulWidget {
  const ReadView({Key? key}) : super(key: key);

  @override
  State<ReadView> createState() => _ReadViewState();
}

class _ReadViewState extends State<ReadView> {
  get toggleFilter => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(150), // Set the desired height for the app bar
        child: AppBar(
          actions: [
            IconButton(
              icon: Icon(
                Icons.favorite,
                color: Colors.white,
              ),
              onPressed: toggleFilter,
            ),
          ],
          title: Center(child: Text("Title")),
          backgroundColor: Colors.transparent, // Make the app bar transparent
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/img2.png'), // Replace with your own image path
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 800,
                width: double.infinity,
                // height: double.infinity,
                color: Colors.brown,
                child: Text(
                  "data",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
