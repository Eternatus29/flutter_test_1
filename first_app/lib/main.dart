import 'package:flutter/material.dart';

void main() {
  runApp(
    //runApp is used to display everything on the app screen.
    MaterialApp(
      home: Scaffold(
        //Scaffold is what contains the widgets describing the screen.
        body: Container(
          //wrapped with Container because we wanted a gradient background and it is not available otherwise.
          decoration: const BoxDecoration(
            //used to decorate the background in this case
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 8, 3, 95),
                Color.fromARGB(255, 40, 4, 89)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: const Center(
            child: Text(
              "Hello World",
              style: TextStyle(
                  //no need to wrap text with another container, Text constructor function already has style parameter that can be used to style the text
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    ),
  );
}
