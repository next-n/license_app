import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: LicenseCard(),
));
class LicenseCard extends StatefulWidget {
  const LicenseCard({Key? key}) : super(key: key);

  @override
  State<LicenseCard> createState() => _LicenseCardState();
}

class _LicenseCardState extends State<LicenseCard> {
  int level = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("License Card"),
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState((){
            level++;
          });
        },
        backgroundColor: Colors.grey[800],
        child: const Icon(
          Icons.add,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/pic1.jpg"),
                radius: 50.0,

              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[500],
            ),
            Text(
              "NAME",
              style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.grey[400],
              ),
            ),
            const SizedBox(height: 10.0,),
            Text(
                "Chang",
              style: TextStyle(
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                color: Colors.cyanAccent[400],
              ),
            ),
            const SizedBox(height: 30.0,),
            Text(
              "CURRENT LEVEL",
              style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.grey[400],
              ),
            ),
            const SizedBox(height: 10.0,),
            Text(
              "$level",
              style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.cyanAccent[400],
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30.0,),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],

                ),
                const SizedBox(width: 10.0,),
                Text(
                  "change@nouse.com",
                  style: TextStyle(
                    letterSpacing: 1.0,
                    fontSize: 20.0,
                    color: Colors.grey[400]
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}


