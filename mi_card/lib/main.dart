import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleAvatar(
                backgroundImage: AssetImage("images/ertugrul.jpg"),
                radius: 50,
              ),
              Text(
                "Ertugrul Gazi",
                style: TextStyle(
                    fontFamily: "Pacifico",
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 23),
              ),
              Text(
                "FLUTTER  DEVELOPER",
                style: TextStyle(
                    fontFamily: "Source Sans Pro",
                    fontWeight: FontWeight.bold,
                    color: Colors.white54,
                    fontSize: 20),
              ),
              Divider(
                indent: 111,
                endIndent: 111,
                color: Colors.white24,
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 12),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text("+923033251567"),
                ),
              ),
              Divider(
                height: 12,
                thickness: 1,
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 12),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text("mcz9mm@gmail.com"),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
