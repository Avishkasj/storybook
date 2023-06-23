import 'package:flutter/material.dart';
import 'package:storybook/ReadView.dart';

class Allbook extends StatefulWidget {
  const Allbook({Key? key}) : super(key: key);

  @override
  State<Allbook> createState() => _AllbookState();
}

class _AllbookState extends State<Allbook> {
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
                    "ALL BOOKS",
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
                        children: [],
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

                      filteredOptions,
                      // Add your book list or other widgets here
                      // Example:
                      // Text('Book 1'),
                      // Text('Book 2'),
                      // Text('Book 3'),

                      Container(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            buildCard('Kind Bunny', Colors.red),
                            buildCard('Red fish', Colors.green),
                            buildCard('Hello trees', Colors.blue),
                            buildCard('Hero gog', Colors.orange),
                            buildCard('challenging jurny', Colors.purple),
                          ],
                        ),
                      ),

                      Container(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            buildCard('Kind Bunny', Colors.red),
                            buildCard('Red fish', Colors.green),
                            buildCard('Hello trees', Colors.blue),
                            buildCard('Hero gog', Colors.orange),
                            buildCard('challenging jurny', Colors.purple),
                          ],
                        ),
                      ),

                      Container(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ReadView()),
                                  );
                                },
                                child: buildCard('Kind Bunny', Colors.red)),
                            buildCard('Red fish', Colors.green),
                            buildCard('Hello trees', Colors.blue),
                            buildCard('Hero gog', Colors.orange),
                            buildCard('challenging jurny', Colors.purple),
                          ],
                        ),
                      ),

                      Container(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            buildCard('Kind Bunny', Colors.red),
                            buildCard('Red fish', Colors.green),
                            buildCard('Hello trees', Colors.blue),
                            buildCard('Hero gog', Colors.orange),
                            buildCard('challenging jurny', Colors.purple),
                          ],
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
      bottomNavigationBar: BottomAppBar(),
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
            child: Text(
              "$title",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.green[100],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Allbook(),
  ));
}
