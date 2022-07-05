import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:nao_entre_em_panico/app.dart';
import 'package:nao_entre_em_panico/app_store.dart';
import 'package:nao_entre_em_panico/pages/creditos_debitos/add_despesa_store.dart';
import 'package:nao_entre_em_panico/pages/creditos_debitos/view/creditos_debitos_store.dart';
import 'package:nao_entre_em_panico/pages/estado_financeiro/estado_financeiro_store.dart';
import 'package:nao_entre_em_panico/pages/home/home_store.dart';
import 'package:nao_entre_em_panico/pages/visao_geral_gastos/visao_geral_gastos_store.dart';

void main() {
  runApp(const App());

  GetIt.I.registerSingleton(HomeStore());
  GetIt.I.registerSingleton(AddDespesaStore());
  GetIt.I.registerSingleton(AppStore());
  GetIt.I.registerSingleton(VisaoGeralGastosStore());
  GetIt.I.registerSingleton(CreditosDebitosStore());
  GetIt.I.registerSingleton(EstadoFinanceiroStore());
}
