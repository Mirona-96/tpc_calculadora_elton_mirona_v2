import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculadora(),
    );
  }
}

class Calculadora extends StatelessWidget {
  Widget calcbutton(String btntxt, Color btncolor, Color txtcolor) {
    return Container(
        child: MaterialButton(
      onPressed: () {
        //funcao ao botao ser presssionado
      },
      child: Text(btntxt,
          style: TextStyle(
            fontSize: 35,
            color: txtcolor,
          )),
      shape: CircleBorder(),
      color: btncolor,
      padding: EdgeInsets.all(20),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Calculadora'),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            //Ecra da calculadora
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text('0',
                      textAlign: TextAlign.right,
                      style: TextStyle(color: Colors.black, fontSize: 100)),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //serao chamadas as funcionalidade dos botoes pnde irao passar alguns argumentos
                calcbutton('AC', Colors.grey, Colors.black),
                calcbutton('+/-', Colors.grey, Colors.black),
                calcbutton('%', Colors.grey, Colors.black),
                calcbutton('/', Colors.amber, Colors.black)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //serao chamadas as funcionalidade dos botoes pnde irao passar alguns argumentos
                calcbutton(
                    '7', Color.fromARGB(15, 158, 158, 158), Colors.black),
                calcbutton(
                    '8', Color.fromARGB(15, 158, 158, 158), Colors.black),
                calcbutton(
                    '9', Color.fromARGB(15, 158, 158, 158), Colors.black),
                calcbutton('*', Colors.amber, Colors.black)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //serao chamadas as funcionalidade dos botoes pnde irao passar alguns argumentos
                calcbutton(
                    '4', Color.fromARGB(15, 158, 158, 158), Colors.black),
                calcbutton(
                    '5', Color.fromARGB(15, 158, 158, 158), Colors.black),
                calcbutton(
                    '6', Color.fromARGB(15, 158, 158, 158), Colors.black),
                calcbutton('-', Colors.amber, Colors.black)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //serao chamadas as funcionalidade dos botoes pnde irao passar alguns argumentos
                calcbutton(
                    '1', Color.fromARGB(15, 158, 158, 158), Colors.black),
                calcbutton(
                    '2', Color.fromARGB(15, 158, 158, 158), Colors.black),
                calcbutton(
                    '3', Color.fromARGB(15, 158, 158, 158), Colors.black),
                calcbutton('+', Colors.amber, Colors.black)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              MaterialButton(
                padding: EdgeInsets.fromLTRB(34, 20, 128, 20),
                onPressed: () {
                  //
                },
                shape: StadiumBorder(),
                child: Text(
                  "0",
                  style: TextStyle(fontSize: 35, color: Colors.black),
                ),
                color: Colors.grey[850],
              ),
              calcbutton(
                  '.', const Color.fromARGB(78, 158, 158, 158), Colors.white),
              calcbutton(
                  '=', const Color.fromARGB(78, 158, 158, 158), Colors.white),
            ])
          ],
        ),
      ),
    );
  }
}
