import 'package:flutter/material.dart';
import 'package:flutter_covid19/panels/worldWidePanel.dart';

import 'datasorce.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("COVID-19 Tracker"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              color: Colors.orange[100],
              child:Text(DataSource.quote,
              style: TextStyle(
                color: Colors.orange[800],
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              child: Text("WorldWide",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold
              ),),
            ),
            WorldWidePanel(),
          ],
        ),
      ),
    );
  }
}
