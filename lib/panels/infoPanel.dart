import 'package:flutter/material.dart';
import 'package:flutter_covid19/datasorce.dart';
import 'package:flutter_covid19/pages/faqs.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=>FAQPage()
              ));
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12,horizontal:10 ),
              margin: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
              color: primaryBlack,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("FAQS",style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),
                  ),
                  Icon(Icons.arrow_forward,color: Colors.white,),

                ],
              ),
            ),
          ),

          GestureDetector(
            onTap: (){
              launch('https://www.pathfinder.org/covid-19/?utm_medium=cpc&utm_source=google&utm_campaign=PFICountries&utm_content=&utm_term=donate%20to%20pandemic&utm_medium=grant&utm_source=google&utm_campaign=XX&utm_content=&utm_term=donate%20to%20pandemic&gclid=CjwKCAiAzNj9BRBDEiwAPsL0dyVju7GyhG2hpexQA995yVFrFlSaGabIbB-U6UHdIMAL9g_rYYF1mBoCG-IQAvD_BwE');
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12,horizontal:10 ),
              margin: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
              color: primaryBlack,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("DONATE",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                  ),
                  ),
                  Icon(Icons.arrow_forward,color: Colors.white,),

                ],
              ),
            ),
          ),

          GestureDetector(
            onTap: (){
              launch('https://www.who.int/emergencies/diseases/novel-coronavirus-2019/advice-for-public/myth-busters');
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12,horizontal:10 ),
              margin: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
              color: primaryBlack,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("MYTH BUSTERS",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                  ),
                  ),
                  Icon(Icons.arrow_forward,color: Colors.white,),

                ],
              ),
            ),
          ),


        ],
      ),
    );
  }
}
