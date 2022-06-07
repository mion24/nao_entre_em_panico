import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardView extends StatelessWidget {
  const CardView(
      {Key? key,
      required this.titulo,
      required this.subT1,
      required this.subT2})
      : super(key: key);

  final String titulo;
  final String subT1;
  final String subT2;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0) //quao redondo e a borda
          ),
      margin: const EdgeInsets.all(20.0),
      elevation: 1.2,
      child: Container(
        width: 350, //maior num finito definido como largura
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.center, //alinhar no começo da pagina
          children: [
            Align(
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text(
                  titulo,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ), //alinhando somente o text titulo no meio
              alignment: Alignment.center,
            ),
            Text(subT1),
            Text(subT2),
          ],
        ),
      ),
    );
  }
}
