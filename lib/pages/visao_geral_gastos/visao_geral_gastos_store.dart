import 'package:mobx/mobx.dart';
import 'package:nao_entre_em_panico/core/helpers/filtro_valor_enum.dart';
import 'package:nao_entre_em_panico/pages/creditos_debitos/reposit%C3%B3rio/creditos_debitos_repositorio.dart';
part 'visao_geral_gastos_store.g.dart';

class VisaoGeralGastosStore = _VisaoGeralGastosStoreBase with _$VisaoGeralGastosStore;

abstract class _VisaoGeralGastosStoreBase with Store {
  final repositorio = CreditosDebitosRepositorio();

  @observable
  double creditoRestante = 0.0;

   @observable
  double valorDiaAnterior = 0.0;

  @observable
  double valorDia = 0.0;

  @observable
  double valorMesAnterior = 0.0;

  @observable
  double valorMes = 0.0;

  @observable
  double valorAnoAnterior = 0.0;

  @observable
  double valorAno = 0.0;

  @action
  Future atualizaValores() async {
    creditoRestante = await repositorio.obterCreditoRestante(); 
    valorDiaAnterior = await repositorio.obterValor(FILTRO_VALOR_ENUM.DIA_ANTERIOR ); //exemplo prox tela tipo: 'Crédito'
    valorDia = await repositorio.obterValor(FILTRO_VALOR_ENUM.DIA_ATUAL);
    valorMesAnterior = await repositorio.obterValor(FILTRO_VALOR_ENUM.MES_ANTERIOR);
    valorMes = await repositorio.obterValor(FILTRO_VALOR_ENUM.MES_ATUAL);
    valorAnoAnterior = await repositorio.obterValor(FILTRO_VALOR_ENUM.ANO_ANTERIOR);
    valorAno = await repositorio.obterValor(FILTRO_VALOR_ENUM.ANO);
  }
}