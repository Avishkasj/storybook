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
      backgroundColor:Color.fromRGBO(47, 114, 100, 1),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  height: 800,
                  width: double.infinity,
                  // height: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Text(
                      "contain data and code. The data is in the form of fields, and the code is in the form of procedures. A common feature of objects is that procedures are attached to                   "
                          "them and can access and modify the contain data and code. The data is in the form of fields, and the code is in the form of procedures. A common feature of objects is that procedures are attached to them and can access and modify the contain data and code. The data is in the form of fields,                                                and the code is in the form of procedures. A common feature of objects is that procedures are attached to them and can access and modify the    contain data and code. The data is in the form of fields, and the code is in the form of procedures. A common feature of objects is that procedures are attached to them and can access and modify the contain data and code. The data is in the form of fields, and the code is in the form of procedures. A common feature of objects is that procedures are attached to them and can access and modify the contain data and code. The data is in the form of fields, and the code is in the form of procedures. A common feature of objects is that procedures are attached to them and can access and modify the contain data and code. The data is in the form of fields, and the code is in the form of procedures. A common feature of objects is that procedures are attached to them and can access and modify the",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                      ),
                    ),
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
