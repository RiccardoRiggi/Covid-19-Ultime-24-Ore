import 'package:flutter/material.dart';

class RigaSchedaTampone extends StatelessWidget {
  String titolo;
  Color colore;
  int valoreTotale;
  int incremento;
  double percentuale;

  RigaSchedaTampone(this.titolo, this.colore, this.valoreTotale,
      this.incremento, this.percentuale);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
        decoration: BoxDecoration(
          color: colore,
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          boxShadow: [BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: Offset(0.0,3.0),
            blurRadius: 15.0 
            )
            ]
        ),
        child: Column(children: [
          Column(
            children: [
              Text(
                titolo,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    valoreTotale.toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 32,
                  ),
                  Text(
                    "(+" + incremento.toString() + ")",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      "Il " +
                          percentuale.toString().substring(0,5) +
                          "% delle persone tamponate è risultato positivo",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.center),
                ],
              )
            ],
          )
        ]));
  }
}
