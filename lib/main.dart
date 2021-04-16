import 'package:flutter/material.dart';

/* Widgets Stateful & Stateless
* Stateless - widgets que não podem ser alterados (constante)
* Stateful - widgets que podem ser alterados (variaveis)
* */
void main() {
  runApp(MaterialApp(
    home: HomeStateful(),
  ));
}

class HomeStateful extends StatefulWidget {
  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {

  String _texto = "Irlan Gomes";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia Stateful"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: (){
                  // setState usado no stateFull para atualizar a interface
                  // chama o metodo build
                  print("clicado");
                  setState(() {
                    _texto = "Texto Alterado";
                  });
                },
                child: Text("Clique aqui")
            ),
            Text("Nome: $_texto")
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightGreen,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: [Text("Text 1"), Text("Text 2")],
          ),
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String _title = "Frases do dia Stateless";

    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Text("corpo do app"),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightGreen,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: [Text("Text 1"), Text("Text 2")],
          ),
        ),
      ),
    );
  }
}

/* Scaffold */
void mainScaffold() {
  runApp(MaterialApp(
      title: "Frases do dia",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Frases do dia"),
          backgroundColor: Colors.green,
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Text("corpo do app"),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.lightGreen,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [Text("Text 1"), Text("Text 2")],
            ),
          ),
        ),
      )));
}

/* Imagens */
void mainImage() {
  runApp(MaterialApp(
    title: "Frases do dia",
    home: Container(
      margin: EdgeInsets.only(top: 40),
      decoration:
          BoxDecoration(border: Border.all(color: Colors.white, width: 3)),
      child: Image.asset(
        "images/parque.jpg",
        // fit define como a imagem vai ser exibida
        fit: BoxFit.scaleDown,
      ),
    ),
  ));
}

/* Alinhamentos */
void mainAlignment() {
  runApp(MaterialApp(
    title: "Frases do dia",
    home: Container(
      margin: EdgeInsets.only(top: 40),
      decoration:
          BoxDecoration(border: Border.all(color: Colors.white, width: 3)),
      child: Column(
        // define o alinhamento do eixo principal
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // define o alinhamento do eixo que cruza o principal
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("T1"),
          Text("T2"),
          Text("T3"),
        ],
      ),
    ),
  ));
}

/* Espaçamentos */
void mainSpacing() {
  runApp(MaterialApp(
    // remove a marca debug
    debugShowCheckedModeBanner: false,
    title: "Frases do dia",
    home: Container(
      // color: Colors.white,
      // espaçamento interno do container
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      // espaçamento externo do container
      // margin: EdgeInsets.all(30),
      margin: EdgeInsets.only(top: 100),
      // exibi uma caixa no container
      decoration:
          BoxDecoration(border: Border.all(width: 3, color: Colors.white)),
      child: Column(
        children: [
          Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting.",
            textAlign: TextAlign.justify,
          )
        ],
      ),
    ),
  ));
}

/* Utilizando botões */
void mainButton() {
  runApp(MaterialApp(
    title: "Frases do dia",
    home: Container(
      color: Colors.white,
      child: Column(
        children: [
          TextButton(
            onPressed: () {
              print("Botão pressionado");
            },
            child: Text(
              "Clique aqui!",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  decoration: TextDecoration.none),
            ),
          )
        ],
      ),
    ),
  ));
}

/* Entendo formatação de textos */
void mainFormatText() {
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
