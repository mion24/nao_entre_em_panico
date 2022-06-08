import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:nao_entre_em_panico/pages/creditos_debitos/add_despesa_store.dart';
import 'package:nao_entre_em_panico/pages/creditos_debitos/creditos.dart';
import 'package:nao_entre_em_panico/pages/creditos_debitos/debitos.dart';

class AddTeste extends StatelessWidget {
  const AddTeste({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = GetIt.I.get<AddDespesaStore>();
    final telas = <Widget>[
      CreditosView(),
      DebitosView(),
    ];
    return Scaffold(
        appBar: AppBar(
          title: Observer(
            builder: (context) => Text(store.textoAppBar()),
          ),
          centerTitle: true,
        ),
        body: Observer(
          builder: (context) => telas.elementAt(store.index),
        ),
        bottomNavigationBar: Observer(
          builder: (context) => BottomNavigationBar(
            onTap: store.mudarIndex,
            currentIndex: store.index,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.money), label: 'Creditos'),
              BottomNavigationBarItem(icon: Icon(Icons.savings), label: 'Débitos'),
            ],
          ),
        ));
  }
}
