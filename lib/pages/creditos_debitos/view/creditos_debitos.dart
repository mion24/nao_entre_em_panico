import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:nao_entre_em_panico/pages/components/card.dart';

import 'package:nao_entre_em_panico/pages/creditos_debitos/add_credito_debito.dart';
import 'package:nao_entre_em_panico/pages/creditos_debitos/view/creditos_debitos_store.dart';

class CreditosDebitosView extends StatelessWidget {
  const CreditosDebitosView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = GetIt.I.get<CreditosDebitosStore>();
    store.atualizaValores();
    store.atualizaValoresDebito();

    return Scaffold(
        backgroundColor: Colors.blue,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => AddTeste()));
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
              Observer(builder: (_) {
                return CardView(
                  titulo: 'Dia',
                  subT1: 'Crédito: R\$  ${store.valorDia}', //
                  subT2: 'Débito: R\$ ${store.valorDiaDebito}',
                );
              }),
              CardView(
                titulo: 'Mês',
                subT1: 'Crédito: R\$  ${store.valorMes}',
                subT2: 'Débito: R\$ ${store.valorDiaDebito}',
              ),
              CardView(
                titulo: 'Ano',
                subT1: 'Crédito: R\$ ${store.valorAno}',
                subT2: 'Débito: R\$ ${store.valorAnoDebito}',
              ),
            ],
          ),
        ));
  }
}
