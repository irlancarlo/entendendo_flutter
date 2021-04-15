import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Frases do dia",
      home: Container(
        color: Colors.white,
        child: Column(
          children: [
            Text(
              "Lorem Ipsum is simply dummy text of the printing and "
              "typesetting industry.",
              style: TextStyle(
                  fontSize: 40,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  // espaco entre as letras
                  letterSpacing: 10,
                  // espaco entre as palavras
                  wordSpacing: 10,
                  // define a posicao da linha
                  decoration: TextDecoration.underline,
                  // cor da linha do textp
                  decorationColor: Colors.red,
                  // define o tipo da linha
                  decorationStyle: TextDecorationStyle.wavy,
                  //
                  color: Colors.black),
            )
          ],
        ),
      )));
}
