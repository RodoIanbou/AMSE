import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About me"),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
                radius: 70, backgroundImage: AssetImage('Images/Rodolphe.jpg')),
            Text(
              'Rodolphe Ianboukhtine',
              style: TextStyle(
                  fontFamily: 'Pacifico',
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Computer engineering Student at IMT Nord Europe',
              style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  letterSpacing: 2.5,
                  color: Colors.orange,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
              width: 150,
              child: Divider(
                color: Colors.grey,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.grey,
                ),
                title: Text(
                  '+33659788960',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 2, horizontal: 25),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                title: Text(
                  'rianboukhtine@gmail.com',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
