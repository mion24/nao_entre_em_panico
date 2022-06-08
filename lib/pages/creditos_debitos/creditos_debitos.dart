import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:nao_entre_em_panico/pages/components/card.dart';
import 'package:nao_entre_em_panico/pages/creditos_debitos/add_despesa.dart';
import 'package:nao_entre_em_panico/pages/creditos_debitos/add_teste.dart';

class CreditosDebitosView extends StatelessWidget {
  const CreditosDebitosView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => AddTeste()));
          },
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 50,
                height: 53,
                child: Image.network(
                    'https://cdn2.iconfinder.com/data/icons/weather-blue-filled-line/32/weather_Flash_lightning_thunder_bolt_Electricity_storm-512.png'),
              ),
              CardView(
                titulo: 'Dia',
                subT1: 'Crédito: R\$ 0.0',
                subT2: 'Débito: R\$ 0.0',
              ),
              CardView(
                titulo: 'Mês',
                subT1: 'Crédito: R\$ 0.0',
                subT2: 'Débito: R\$ 0.0',
              ),
              CardView(
                titulo: 'Ano',
                subT1: 'Crédito: R\$ 0.0',
                subT2: 'Débito: R\$ 0.0',
              ),
            ],
          ),
        ));
  }
}
