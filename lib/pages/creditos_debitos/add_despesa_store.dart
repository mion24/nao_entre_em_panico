import 'package:mobx/mobx.dart';
part 'add_despesa_store.g.dart';

class AddDespesaStore = _AddDespesaStoreBase with _$AddDespesaStore;

abstract class _AddDespesaStoreBase with Store {
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
}
