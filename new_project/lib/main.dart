import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: FootballPlayer(),)
  );
}

class FootballPlayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: Container(
          width: double.infinity,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(

                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      CircleAvatar(
                      radius: 60,
                      backgroundImage: NetworkImage(
                        "https://pbs.twimg.com/profile_images/891114812796796928/PVjctqFC.jpg"),

                ),
                  ]
                ),
              ),


                Container(
                  margin: EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    "Wojciech Szczęsny",
                    style: TextStyle(fontSize: 22),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left: 16),
                  child: Text(
                    "Polski piłkarz występujący na pozycji bramkarza we włoskim klubie"
                      "Juventus F.C. oraz w reprezentacji Polski. Uczestnik Mistrzostw Świata 2018, Mistrzostw Europy 2012 i 2016. Syn Macieja Szczęsnego.",
                  style: TextStyle(color: Colors.blue),
                  textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  child:  Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Moja ocena:",
                          ),
                        ),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star_border),
                      ],
                  )

                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),

                  ),
                  child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        Icon(Icons.cake),
                        Text('18.04.1990'),

                      ]
                  ),
                  ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),

                  ),
                  child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        Icon(Icons.sports_soccer),
                        Text('Juventys Turyn'),

                      ]
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),

                  ),
                  child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        Icon(Icons.arrow_upward),
                        Text('1.95'),

                      ]
                  ),
                ),

              ]
          )
      ),
    );
  }
}
