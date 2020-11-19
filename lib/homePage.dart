import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_covid19/panels/mostEffectiveCountry.dart';
import 'package:flutter_covid19/panels/worldWidePanel.dart';
import 'package:http/http.dart' as http;
import 'datasorce.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map worldDAta;
  fetchWorldWideDAta()async{
    http.Response response=await http.get('https://disease.sh/v3/covid-19/all');

    setState(() {
      worldDAta=json.decode(response.body);
    });
  }

  List countryData;
  fetchCountryData() async {
    http.Response response =
    await http.get('https://corona.lmao.ninja/v2/countries?sort=cases');
    setState(() {
      countryData = json.decode(response.body);
    });
  }

  @override
  void initState() {
    fetchWorldWideDAta();
    fetchCountryData();
    super.initState();
  }

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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("WorldWide",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                    ),),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: primaryBlack,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    
                    child: Text("Regional",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),),
                  ),

                ],
              ),
            ),
            worldDAta==null? CircularProgressIndicator() :WorldWidePanel(worldData: worldDAta,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              child:Text("Most affected Countries",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                ),),
            ),
            SizedBox(height: 10,),
            countryData == null
                ? Container()
                : MostEffectedPanel(
              countryData: countryData,
            ),

          ],
        ),
      ),
    );
  }
}
