import 'package:flutter/material.dart';

class GaleryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(15),
        child: ListView(
          children: [
            Card(
              elevation: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(3),
                    margin: EdgeInsets.all(3),
                    child: Image.asset("assets/images/4.png"),
                  ),
                  Container(
                    // color: Colors.amber,
                    padding: EdgeInsets.fromLTRB(6, 0, 0, 5),
                    child: Text(
                      "Foto 0",
                      style: TextStyle(fontSize: 10, color: Color.fromARGB(255, 237, 94, 220), fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
            ),
            Card(
              elevation: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Image.asset("assets/images/4.png"),
                  ),
                  Container(
                    // color: Colors.amber,
                    padding: EdgeInsets.fromLTRB(6, 0, 0, 5),
                    child: Text(
                      "Foto 1",
                      style: TextStyle(fontSize: 10, color: Color.fromARGB(255, 255, 221, 110), fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
            ),
            Card(
              elevation: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Image.asset("assets/images/4.png"),
                  ),
                  Container(
                    // color: Colors.amber,
                    padding: EdgeInsets.fromLTRB(6, 0, 0, 5),
                    child: Text(
                      "Foto 2",
                      style: TextStyle(fontSize: 10, color: Color.fromARGB(255, 51, 60, 131), fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
            ),
            Card(
              elevation: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Image.asset("assets/images/4.png"),
                  ),
                  Container(
                    // color: Colors.amber,
                    padding: EdgeInsets.fromLTRB(6, 0, 0, 5),
                    child: Text(
                      "Foto 3",
                      style: TextStyle(fontSize: 10, color: Color.fromARGB(255, 0, 204, 255), fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
