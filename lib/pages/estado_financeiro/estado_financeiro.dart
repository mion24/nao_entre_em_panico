import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:nao_entre_em_panico/pages/components/card.dart';

import '../../core/helpers/converte_data.dart';
import '../creditos_debitos/view/creditos_debitos_store.dart';
import 'estado_financeiro_store.dart';

class EstadoFinanceiroView extends StatelessWidget {
  const EstadoFinanceiroView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = GetIt.I.get<EstadoFinanceiroStore>();
    store.atualizaValores();
    store.atualizaValoresDebito();
    final dataHoje = DateTime.now();

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
            subT1:
                'Hoje: Superávit: R\$ ${store.valorDia - store.valorDiaDebito}',
            subT2:
                'Ontem: Superávit: R\$ ${store.valorDiaAnterior - store.valorDiaAnteriorDebito}',
          ),
          CardView(
            titulo: 'Mês',
            subT1:
                '${ConverteData.mesAno(dataHoje)}: Superávit : R\$ ${store.valorMes - store.valorMesDebito}',
            subT2:
                '${ConverteData.mesAno(DateTime(dataHoje.year, dataHoje.month - 1, dataHoje.day))}: Superávit: R\$ ${store.valorMes - store.valorMesAntDebito}',
          ),
          CardView(
            titulo: 'Ano',
            subT1:
                '${DateTime.now().year}: Superávit: R\$ ${store.valorAno - store.valorAnoDebito}',
            subT2:
                '${DateTime.now().year - 1}: Superávit: R\$ ${store.valorAnoAnterior - store.valorAnoAnteriorDebito}',
          ),
        ],
      ),
    );
  }
}
