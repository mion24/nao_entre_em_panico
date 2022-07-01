import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:nao_entre_em_panico/pages/creditos_debitos/models/creditos_debitos_model.dart';
import 'package:nao_entre_em_panico/pages/creditos_debitos/reposit%C3%B3rio/creditos_debitos_repositorio.dart';
import 'package:uuid/uuid.dart';
part 'add_despesa_store.g.dart';

class AddDespesaStore = _AddDespesaStoreBase with _$AddDespesaStore;

abstract class _AddDespesaStoreBase with Store {

  final repositorio = CreditosDebitosRepositorio();

_AddDespesaStoreBase() {
  id = const Uuid().v4();  //gera o guide
  data = DateTime.now();
  tipo = index == 0 ? 'Débito' : 'Crédito';
  controllerValor.addListener(() {
    if(controllerValor.text.isNotEmpty) {
      valor = double.tryParse(controllerValor.text);
    }
  controllerDescricao.addListener(() {
    descricao = controllerDescricao.text;
  });
  });
}


  @observable
  int index = 0;

  @action
  void mudarIndex(int value) => index = value;

  String textoAppBar() {
    switch (index) {
      case 0:
        return 'Débitos';
      case 1:
        return 'Creditos';  
      default:
        return 'Créditos';
    }
  }

  @observable
  TextEditingController controllerValor = TextEditingController();

  @observable
  TextEditingController controllerDescricao = TextEditingController();

  @observable
  String? id;

  @observable
  String? descricao;

  @observable
  double? valor;

  @observable
  String? tipo;

  @observable
  DateTime? data;

  @observable
  bool salvando = false;

  @action
  Future<void> salvar() async{
    salvando = true;
    await repositorio.salvarCreditoDebito(tomodel());
    salvando = false;
  }

  CreditosDebitosModel tomodel() => CreditosDebitosModel(
    id: id,
    data: data,
    valor: valor,
    tipo: tipo,
    descricao: descricao,
  );

}
