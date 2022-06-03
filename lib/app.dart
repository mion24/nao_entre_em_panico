import 'package:flutter/material.dart';
import 'package:nao_entre_em_panico/core/tema/tema.dart';
import 'package:nao_entre_em_panico/pages/home/home.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Não entre em sh0k - Soluções financeiras',
      theme: tema(),
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
