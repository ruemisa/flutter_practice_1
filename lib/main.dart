import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: MemberCard(),
));

class MemberCard extends StatefulWidget {
  @override
  _MemberCardState createState() => _MemberCardState();
}

class _MemberCardState extends State<MemberCard> {

  int gymLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Member Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            gymLevel += 1; // gymLevel++ works as well
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[600],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/workout-1.jpg'
                ),
                radius: 80.0,
                
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[650],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.5,

              )
            ),
            SizedBox(height: 10.0),
            Text(
              'Alicia Crawford',
              style: TextStyle(
                color: Colors.pinkAccent[200],
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0
              )
            ),
            SizedBox(height: 30.0),
            Text(
              'MEMBER SINCE',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.5,

              )
            ),
            SizedBox(height: 10.0),
            Text(
              '11.17.2019',
              style: TextStyle(
                color: Colors.pinkAccent[200],
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0
              )
            ),
            SizedBox(height: 30.0),
            Text(
              'GYM LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.5,

              )
            ),
            SizedBox(height: 10.0),
            Text(
              '$gymLevel',
              style: TextStyle(
                color: Colors.pinkAccent[200],
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0
              )
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.phone,
                  size: 15.0,
                  color: Colors.grey[350],
                ),
                SizedBox(width: 5.0),
                Text(
                  '363.445.7212',
                  style: TextStyle(
                    color: Colors.grey[350],
                    fontSize: 20.0,
                    letterSpacing: 2.0
                  )
                )
              ],
            )
          ],
        )
      )
    );
  }
}

