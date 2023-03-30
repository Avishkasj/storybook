import 'package:flutter/material.dart';

class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(47, 114, 100, 1),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text('r'),
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromRGBO(47, 114, 100, 1),
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                // Handle navigation to the home screen
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Handle navigation to the settings screen
              },
            ),
          ],
        ),
      ),

      body: Stack(
        children: [
          Container(
            height: 220,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img2.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.fromLTRB(0, 180, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.book_sharp,
                  color: Colors.white,
                  size: 24.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
                Container(
                  child: Text("BOOK",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),),
                ),
              ],
            ),
          ),

          // Padding(
          //   padding: const EdgeInsets.only(top: 200),
          //   child: Container(
          //     child: SingleChildScrollView(
          //       scrollDirection: Axis.horizontal,
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: [
          //
          //           Padding(
          //             padding: const EdgeInsets.only(bottom: 30),
          //             child: OutlinedButton(
          //               child: Text("Next"),
          //               style: OutlinedButton.styleFrom(
          //                 primary: Colors.black,
          //                 side: BorderSide(
          //                   color: Colors.green,
          //                 ),
          //               ),
          //               onPressed: () {
          //                     print("clicked");
          //               },
          //             ),
          //           ),
          //
          //           Padding(
          //             padding: const EdgeInsets.only(bottom: 30),
          //             child: OutlinedButton(
          //               child: Text("Next"),
          //               style: OutlinedButton.styleFrom(
          //                 primary: Colors.black,
          //                 side: BorderSide(
          //                   color: Colors.green,
          //                 ),
          //               ),
          //               onPressed: () {
          //                 Navigator.push(context,
          //                     MaterialPageRoute(builder: (context) => dashboard()));
          //               },
          //             ),
          //           ),
          //
          //
          //           Padding(
          //             padding: const EdgeInsets.only(bottom: 30),
          //             child: OutlinedButton(
          //               child: Text("Next"),
          //               style: OutlinedButton.styleFrom(
          //                 primary: Colors.black,
          //                 side: BorderSide(
          //                   color: Colors.green,
          //                 ),
          //               ),
          //               onPressed: () {
          //                 Navigator.push(context,
          //                     MaterialPageRoute(builder: (context) => dashboard()));
          //               },
          //             ),
          //           ),
          //
          //
          //           Padding(
          //             padding: const EdgeInsets.only(bottom: 30),
          //             child: OutlinedButton(
          //               child: Text("Next"),
          //               style: OutlinedButton.styleFrom(
          //                 primary: Colors.black,
          //                 side: BorderSide(
          //                   color: Colors.green,
          //                 ),
          //               ),
          //               onPressed: () {
          //                 Navigator.push(context,
          //                     MaterialPageRoute(builder: (context) => dashboard()));
          //               },
          //             ),
          //           ),
          //
          //
          //           Padding(
          //             padding: const EdgeInsets.only(bottom: 30),
          //             child: OutlinedButton(
          //               child: Text("Next"),
          //               style: OutlinedButton.styleFrom(
          //                 primary: Colors.black,
          //                 side: BorderSide(
          //                   color: Colors.green,
          //                 ),
          //               ),
          //               onPressed: () {
          //                 Navigator.push(context,
          //                     MaterialPageRoute(builder: (context) => dashboard()));
          //               },
          //             ),
          //           ),
          //
          //
          //           Padding(
          //             padding: const EdgeInsets.only(bottom: 30),
          //             child: OutlinedButton(
          //               child: Text("Next"),
          //               style: OutlinedButton.styleFrom(
          //                 primary: Colors.black,
          //                 side: BorderSide(
          //                   color: Colors.green,
          //                 ),
          //               ),
          //               onPressed: () {
          //                 Navigator.push(context,
          //                     MaterialPageRoute(builder: (context) => dashboard()));
          //               },
          //             ),
          //           ),
          //
          //
          //           Padding(
          //             padding: const EdgeInsets.only(bottom: 30),
          //             child: OutlinedButton(
          //               child: Text("Next"),
          //               style: OutlinedButton.styleFrom(
          //                 primary: Colors.black,
          //                 side: BorderSide(
          //                   color: Colors.green,
          //                 ),
          //               ),
          //               onPressed: () {
          //                 Navigator.push(context,
          //                     MaterialPageRoute(builder: (context) => dashboard()));
          //               },
          //             ),
          //           ),
          //
          //
          //
          //
          //         ],
          //       ),
          //     ),
          //
          //   ),
          // ),

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
              child:  Transform.translate(
                offset: Offset(0, 130),
                child: SingleChildScrollView(
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Card(
                                          color: Color.fromARGB(190, 134, 108, 1),
                                          margin: EdgeInsets.zero,
                                          elevation: 0,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(30.0),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Container(
                                                height: 200,
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: AssetImage('assets/img1.png'),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text('My Card'),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),



                                    Flexible(
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Card(
                                          color: Color.fromARGB(190, 134, 108, 1),
                                          margin: EdgeInsets.zero,
                                          elevation: 0,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(30.0),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Container(
                                                height: 200,
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: AssetImage('assets/img1.png'),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text('My Card'),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),



                      //row 2

                      Column(
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Card(
                                        margin: EdgeInsets.zero,
                                        elevation: 0,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(30.0),
                                          child: Container(
                                            height: 200,
                                            width: double.infinity,
                                            child: Center(
                                              child: Text('My Card'),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),


                                  Flexible(
                                    child: GestureDetector(
                                      onTap: () {
                                        // Handle the onTap event here
                                        print('Card tapped');
                                      },
                                      child: Card(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(15.0),
                                          child: Container(
                                            height: 200,
                                            width: double.infinity,
                                            child: Center(
                                              child: Text('My Card'),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),


                                ],
                              ),
                            ),
                          )
                        ],
                      ),


                      //row 3


                      Column(
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Card(
                                        margin: EdgeInsets.zero,
                                        elevation: 0,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(30.0),
                                          child: Container(
                                            height: 200,
                                            width: double.infinity,
                                            child: Center(
                                              child: Text('My Card'),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),


                                  Flexible(
                                    child: Card(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(15.0),
                                        child: Container(
                                          height: 200,
                                          width: double.infinity,
                                          child: Center(
                                            child: Text('My Card'),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),



                      //row 4

                      Column(
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Card(
                                        margin: EdgeInsets.zero,
                                        elevation: 0,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(30.0),
                                          child: Container(
                                            height: 200,
                                            width: double.infinity,
                                            child: Center(
                                              child: Text('My Card'),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),


                                  Flexible(
                                    child: Card(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(15.0),
                                        child: Container(
                                          height: 200,
                                          width: double.infinity,
                                          child: Center(
                                            child: Text('My Card'),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          )
                        ],
                      ),


                      //row 5

                      Column(
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Card(
                                        margin: EdgeInsets.zero,
                                        elevation: 0,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(30.0),
                                          child: Container(
                                            height: 200,
                                            width: double.infinity,
                                            child: Center(
                                              child: Text('My Card'),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),


                                  Flexible(
                                    child: Card(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(15.0),
                                        child: Container(
                                          height: 200,
                                          width: double.infinity,
                                          child: Center(
                                            child: Text('My Card'),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          )
                        ],
                      ),


                      Column(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

