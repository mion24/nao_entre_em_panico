import 'package:flutter/material.dart';
import 'package:nao_entre_em_panico/pages/components/card.dart';

class EstadoFinanceiroView extends StatelessWidget {
  const EstadoFinanceiroView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
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
            subT1: 'Hoje: Superávit(r\$ 0.0)',
            subT2: 'Ontem: Superávit(r\$ 0.0)',
          ),
          CardView(
            titulo: 'Mês',
            subT1: '03-2022: Superávit(r\$ 0.0)',
            subT2: '04-2022: Superávit(r\$ 0.0)',
          ),
          CardView(
            titulo: 'Ano',
            subT1: '2022: Superávit(r\$ 0.0)',
            subT2: '2021: Superávit(r\$ 0.0)',
          ),
        ],
      ),
    );
  }
}
