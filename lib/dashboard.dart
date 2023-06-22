import 'package:flutter/material.dart';
import 'package:storybook/ReadView.dart';

class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  bool showFilter = false;

  void toggleFilter() {
    setState(() {
      showFilter = !showFilter;
    });
  }

  @override
  Widget build(BuildContext context) {
    final filterOptions = <Widget>[
      // Add your filter options/widgets here
      // Example:
      // Text('Filter Option 1'),
      // Text('Filter Option 2'),
    ];

    final filteredOptions = Visibility(
      visible: showFilter,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: filterOptions,
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Color.fromRGBO(47, 114, 100, 1),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text('r'),
        actions: [
          IconButton(
            icon: Icon(Icons.filter_list),
            onPressed: toggleFilter,
          ),
        ],
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
                  child: Text(
                    "BOOK",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
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
              child: Transform.translate(
                offset: Offset(0, 140),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            child: Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 10, 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Card(
                                          color: Colors.white,
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Column(
                                              children: [
                                                Icon(
                                                  Icons.book,
                                                  color: Color.fromRGBO(
                                                      41, 89, 69, 1),
                                                  size: 40.0,
                                                ),
                                                Text(
                                                  '   Books   ',
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color.fromRGBO(
                                                        41, 89, 69, 1),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Card(
                                          color: Colors.white,
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Column(
                                              children: [
                                                Icon(
                                                  Icons.audiotrack,
                                                  color: Color.fromRGBO(
                                                      41, 89, 69, 1),
                                                  size: 40.0,
                                                ),
                                                Text(
                                                  '    Audio    ',
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color.fromRGBO(
                                                        41, 89, 69, 1),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Card(
                                          color: Colors.white,
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Column(
                                              children: [
                                                Icon(
                                                  Icons.settings,
                                                  color: Color.fromRGBO(
                                                      41, 89, 69, 1),
                                                  size: 40.0,
                                                ),
                                                Text(
                                                  ' Settings ',
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color.fromRGBO(
                                                        41, 89, 69, 1),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.fromLTRB(0, 20, 320, 0),
                      //   child: Text(
                      //     'NEW',
                      //     style: TextStyle(
                      //       color: Colors.white,
                      //       fontSize: 16,
                      //       fontWeight: FontWeight.bold,
                      //     ),
                      //   ),
                      // ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 15, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'New',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Row(
                              children: [
                                Text(
                                  'See all',
                                  style: TextStyle(
                                    color: Colors.green[200],
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 6),
                                  child: Icon(Icons.arrow_forward,color: Colors.green[200],size: 15,),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      filteredOptions,
                      // Add your book list or other widgets here
                      // Example:
                      // Text('Book 1'),
                      // Text('Book 2'),
                      // Text('Book 3'),
                      Column(
                        children: [
                          SizedBox(height: 10),
                          Container(
                            height: 200,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                buildCard('Kind Bunny', Colors.red),
                                buildCard('Red fish', Colors.green),
                                buildCard('Hello trees', Colors.blue),
                                buildCard('Card 4', Colors.orange),
                                buildCard('Card 5', Colors.purple),
                              ],
                            ),
                          ),
                          // SizedBox(height: 150,),
                        ],
                      ),



                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 30, 15, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Featured',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Row(
                              children: [
                                Text(
                                  'See all',
                                  style: TextStyle(
                                    color: Colors.green[200],
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 6),
                                  child: Icon(Icons.arrow_forward,color: Colors.green[200],size: 15,),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      Column(
                        children: [
                          SizedBox(height: 10),
                          Container(
                            height: 200,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                buildCard('Card 1', Colors.red),
                                buildCard('Card 2', Colors.green),
                                buildCard('Card 3', Colors.blue),
                                buildCard('Card 4', Colors.orange),
                                buildCard('Card 5', Colors.purple),
                              ],
                            ),
                          ),
                          // SizedBox(height: 150,),
                        ],
                      ),

                      Column(
                        children: [
                          SizedBox(height: 10),
                          Container(
                            height: 200,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                buildCard('Card 1', Colors.red),
                                buildCard('Card 2', Colors.green),
                                buildCard('Card 3', Colors.blue),
                                buildCard('Card 4', Colors.orange),
                                buildCard('Card 5', Colors.purple),
                              ],
                            ),
                          ),
                          // SizedBox(height: 150,),
                        ],
                      ),

                      // Column(
                      //   children: [
                      //     Center(
                      //       child: Padding(
                      //         padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      //         child: Row(
                      //           mainAxisAlignment:
                      //               MainAxisAlignment.spaceBetween,
                      //           children: [
                      //             Flexible(
                      //               child: Padding(
                      //                 padding: const EdgeInsets.all(4.0),
                      //                 child: Card(
                      //                   margin: EdgeInsets.zero,
                      //                   elevation: 0,
                      //                   child: ClipRRect(
                      //                     borderRadius:
                      //                         BorderRadius.circular(30.0),
                      //                     child: Container(
                      //                       height: 200,
                      //                       width: double.infinity,
                      //                       child: Center(
                      //                         child: Text('My Card'),
                      //                       ),
                      //                     ),
                      //                   ),
                      //                 ),
                      //               ),
                      //             ),
                      //             Flexible(
                      //               child: Card(
                      //                 child: ClipRRect(
                      //                   borderRadius:
                      //                       BorderRadius.circular(15.0),
                      //                   child: Container(
                      //                     height: 200,
                      //                     width: double.infinity,
                      //                     child: Center(
                      //                       child: Text('My Card'),
                      //                     ),
                      //                   ),
                      //                 ),
                      //               ),
                      //             ),
                      //           ],
                      //         ),
                      //       ),
                      //     )
                      //   ],
                      // ),
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

  Widget buildCard(String title, Color color) {
    return Container(
      width: 160,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                        child: Text('$title'),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text("$title",
              textAlign: TextAlign.left,
              style: TextStyle(
              color: Colors.green[100],
            ),),
          ),
        ],
      ),
    );

  }
}

void main() {
  runApp(MaterialApp(
    home: dashboard(),
  ));
}
