import 'package:flutter/material.dart';
import 'package:nao_entre_em_panico/pages/components/card.dart';

class VisaoGeralGastosView extends StatelessWidget {
  const VisaoGeralGastosView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Digite seu nome',
                    border: OutlineInputBorder(),
                  ),
                  textAlign: TextAlign.center),
            ),
          ),
          Text('Crédito atual'),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text(
              'R\$ 0.0',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 2,
              width: double.maxFinite,
              color: Colors.grey,
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            ),
          ),
          CardView(
            titulo: 'Dia',
            subT1: 'Hoje: R\$ 0.0',
            subT2: 'Ontem: R\$ 0.0',
          ),
          CardView(
              titulo: 'Mês',
              subT1: '03-2022: R\$ 0.0',
              subT2: '02-2022: R\$ 0.0'),
          CardView(
            titulo: 'Ano',
            subT1: '2022: R\$ 0.0',
            subT2: '2021: R\$ 0.0',
          ),
        ],
      ),
    );
  }
}
