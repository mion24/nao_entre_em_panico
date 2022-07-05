import 'package:mobx/mobx.dart';
import 'package:nao_entre_em_panico/core/helpers/filtro_valor_enum.dart';

import '../creditos_debitos/repositório/creditos_debitos_repositorio.dart';
part 'estado_financeiro_store.g.dart';

class EstadoFinanceiroStore = _EstadoFinanceiroStoreBase
    with _$EstadoFinanceiroStore;

abstract class _EstadoFinanceiroStoreBase with Store {
  final repositorio = CreditosDebitosRepositorio();

  @observable
  double creditoRestante = 0.0;

  @observable
  double valorDiaAnterior = 0.0;

  @observable
  double valorDiaAnteriorDebito = 0.0;

  @observable
  double valorDiaDebito = 0.0;

  @observable
  double valorDia = 0.0;

  @observable
  double valorMesAnterior = 0.0;

  @observable
  double valorMesAntDebito = 0.0;

  @observable
  double valorMesDebito = 0.0;

  @observable
  double valorMes = 0.0;

  @observable
  double valorAnoAnterior = 0.0;

  @observable
  double valorAnoAnteriorDebito = 0.0;

  @observable
  double valorAnoDebito = 0.0;

  @observable
  double valorAno = 0.0;

  @action
  Future atualizaValores() async {
    creditoRestante = await repositorio.obterCreditoRestante();
    valorDiaAnterior = await repositorio.obterValor(
        FILTRO_VALOR_ENUM.DIA_ANTERIOR,
        tipo: 'Crédito'); //exemplo prox tela tipo: 'Crédito'
    valorDia = await repositorio.obterValor(FILTRO_VALOR_ENUM.DIA_ATUAL,
        tipo: 'Crédito');
    valorMesAnterior = await repositorio
        .obterValor(FILTRO_VALOR_ENUM.MES_ANTERIOR, tipo: 'Crédito');
    valorMes = await repositorio.obterValor(FILTRO_VALOR_ENUM.MES_ATUAL,
        tipo: 'Crédito');
    valorAnoAnterior = await repositorio
        .obterValor(FILTRO_VALOR_ENUM.ANO_ANTERIOR, tipo: 'Crédito');
    valorAno =
        await repositorio.obterValor(FILTRO_VALOR_ENUM.ANO, tipo: 'Crédito');
  }

  Future atualizaValoresDebito() async {
    creditoRestante = await repositorio.obterCreditoRestante();
    valorDiaAnteriorDebito = await repositorio.obterValor(
        FILTRO_VALOR_ENUM.DIA_ANTERIOR,
        tipo: 'Débito'); //exemplo prox tela tipo: 'Crédito'
    valorDiaDebito = await repositorio.obterValor(FILTRO_VALOR_ENUM.DIA_ATUAL,
        tipo: 'Débito');
    valorMesDebito = await repositorio.obterValor(FILTRO_VALOR_ENUM.MES_ATUAL,
        tipo: 'Débito');
    valorMesAntDebito = await repositorio
        .obterValor(FILTRO_VALOR_ENUM.MES_ANTERIOR, tipo: 'Débito');
    valorAnoDebito =
        await repositorio.obterValor(FILTRO_VALOR_ENUM.ANO, tipo: 'Débito');
    valorAnoAnteriorDebito = await repositorio
        .obterValor(FILTRO_VALOR_ENUM.ANO_ANTERIOR, tipo: 'Débito');
  }
}
