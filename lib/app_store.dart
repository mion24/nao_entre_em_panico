import 'package:mobx/mobx.dart';
import 'package:nao_entre_em_panico/core/tema/data/datasources/localstorage/local_storage.dart';
part 'app_store.g.dart';

class AppStore = _AppStoreBase with _$AppStore;

abstract class _AppStoreBase with Store {
  @observable
  String nome = '';

  @action
  Future init() async {
    final response = await LocalStorage().ler('nome');
    if (response != null) {
      nome = response;
    }
  }

  @action
  Future definirNome(String nome) async {
    
    await LocalStorage().salvar('nome', nome); //parametro nome
    this.nome = nome;    //a variavel nome recebe o parametro nome
  }
}
