import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddDespesaView extends StatelessWidget {
  const AddDespesaView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar despesa/gasto'),
        centerTitle: true,
      ),
      backgroundColor: Colors.lightBlue.shade100,
      body: Column(
        children: [
          SizedBox(
            width: 50,
            height: 53,
            child: Image.network(
                'https://cdn2.iconfinder.com/data/icons/weather-blue-filled-line/32/weather_Flash_lightning_thunder_bolt_Electricity_storm-512.png'),
          ),
          Text('Crédito'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Valor',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Descrição',
              ),
            ),
          ),
          Text('Data'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.calendar_month),
          )
        ],
      ),
    );
  }
}
