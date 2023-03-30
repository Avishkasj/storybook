import 'package:flutter/material.dart';
import 'package:storybook/dashboard.dart';
import 'package:storybook/select.dart';

class welcome extends StatefulWidget {
  const welcome({Key? key}) : super(key: key);

  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img2.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, Colors.black.withOpacity(0.8)],
              ),
            ),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Text(
                  //   "data",
                  //   style: TextStyle(
                  //     color: Colors.white,
                  //   ),
                  // ),

                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: OutlinedButton(
                      child: Text("Next"),
                      style: OutlinedButton.styleFrom(
                        primary: Colors.white,
                        side: BorderSide(
                          color: Colors.green,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => dashboard()));
                      },
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: OutlinedButton(
                      child: Text("Next 2"),
                      style: OutlinedButton.styleFrom(
                        primary: Colors.white,
                        side: BorderSide(
                          color: Colors.green,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => select()));
                      },
                    ),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

