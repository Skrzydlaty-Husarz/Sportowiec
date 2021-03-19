import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
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
                    children: [
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
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Moja ocena:",
                      ),

                    ),
                    StarsRow(3),
                  ],
                ),
              ),
              LeBox(Icons.cake, '18.04.1990'),
              LeBox(Icons.sports_soccer, 'Juventys Turyn'),
              LeBox(Icons.arrow_upward, '1.95')
            ],
          )


      ),
    );
  }
}


class StarsRow extends StatelessWidget {
  final int rating;

  const StarsRow(this.rating, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> stars = [];
    for (int i = 0; i < 4; i++) {
      if (i < rating) {
        stars.add(Icon(Icons.star));
      }
      else {
        stars.add(Icon(Icons.star_border));
      }
    }
    return Row(
        children:
        stars
    );
  }
}

class LeBox extends StatelessWidget {
  final IconData icon;
  final String dum;

  const LeBox(this.icon,
      this.dum, {
        Key key,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> box = [];
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          Icon(icon),
          Expanded(
            child: Text(
              (dum),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
    );
    box.add(Icon(icon));
    box.add(Text(dum));
    return Container(
      child: Row(
        children: box,
      ),
    );
  }
}

