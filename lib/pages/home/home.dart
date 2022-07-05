import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:nao_entre_em_panico/pages/creditos_debitos/view/creditos_debitos.dart';
import 'package:nao_entre_em_panico/pages/estado_financeiro/estado_financeiro.dart';
import 'package:nao_entre_em_panico/pages/home/home_store.dart';
import 'package:nao_entre_em_panico/pages/visao_geral_gastos/visao_geral_gastos.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = GetIt.I.get<HomeStore>();
    final telas = <Widget>[
      VisaoGeralGastosView(),
      CreditosDebitosView(),
      EstadoFinanceiroView(),
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
              BottomNavigationBarItem(icon: Icon(Icons.money), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.savings), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.timeline), label: ''),
            ],
          ),
        ));
  }
}
