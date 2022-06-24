import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:nao_entre_em_panico/app_store.dart';
import 'package:nao_entre_em_panico/pages/components/card.dart';

class VisaoGeralGastosView extends StatefulWidget {
  const VisaoGeralGastosView({Key? key}) : super(key: key);

  @override
  State<VisaoGeralGastosView> createState() => _VisaoGeralGastosViewState();
}

class _VisaoGeralGastosViewState extends State<VisaoGeralGastosView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final appStore = GetIt.I.get<AppStore>();

    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          Container(
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Visibility(
                  visible: !_tecladoEstaVisivel(),
                  child: GestureDetector(onTap: () {
                    showDialog(
                      context: context,
                      builder: (_) => SimpleDialog(
                        title: const Text('Definir nome de usuário'),
                        backgroundColor: Colors.blue,
                        titleTextStyle: TextStyle(color: Colors.white),
                        contentPadding: EdgeInsets.all(16),
                        children: [
                          TextFormField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(hintText: 'Definir nome'),
                            initialValue: appStore.nome,
                            onChanged: (String? value) {
                              appStore.nome = value ?? '';
                            },
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          ElevatedButton(
                              onPressed: (() {
                                if (appStore.nome.trim().isNotEmpty) {
                                  appStore.definirNome(appStore.nome);
                                } else {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Text('O texto não pode ser vazio'),
                                  ));
                                }
                              }),
                              child: Text('Salvar'))
                        ],
                      ),
                    );
                  }, child: Observer(
                    builder: (_) {
                      return Text(
                          '${appStore.nome.isEmpty ? 'Digite seu nome' : appStore.nome}');
                    },
                  )),
                )),
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

      bool _tecladoEstaVisivel() {
        return !(MediaQuery.of(context).viewInsets.bottom == 0);
      }
}
