import 'package:flutter/material.dart';

class CreditosView extends StatelessWidget {
  const CreditosView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 50,
          height: 53,
          child: Image.network(
              'https://cdn2.iconfinder.com/data/icons/weather-blue-filled-line/32/weather_Flash_lightning_thunder_bolt_Electricity_storm-512.png'),
        ),
        Text('Creditos'),
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
    );
  }
}
