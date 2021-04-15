

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "Frases do dia",
    // home: Container(color: Colors.white,),
    // home: Column(
    //   children: [
    //     Text("texto 1"),
    //     Text("texto 2"),
    //     Text("texto 3"),
    //     Text("texto 4"),
    //   ],
    // ),
    home: Row(children: [
      Text("T1,"),
      Text("T2,"),
      Text("T3,"),
      Text("T4"),
    ],),
  ));
}