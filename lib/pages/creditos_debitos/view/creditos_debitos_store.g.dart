// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creditos_debitos_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CreditosDebitosStore on _CreditosDebitosStoreBase, Store {
  late final _$creditoRestanteAtom =
      Atom(name: '_CreditosDebitosStoreBase.creditoRestante', context: context);

  @override
  double get creditoRestante {
    _$creditoRestanteAtom.reportRead();
    return super.creditoRestante;
  }

  @override
  set creditoRestante(double value) {
    _$creditoRestanteAtom.reportWrite(value, super.creditoRestante, () {
      super.creditoRestante = value;
    });
  }

  late final _$valorDiaAnteriorAtom = Atom(
      name: '_CreditosDebitosStoreBase.valorDiaAnterior', context: context);

  @override
  double get valorDiaAnterior {
    _$valorDiaAnteriorAtom.reportRead();
    return super.valorDiaAnterior;
  }

  @override
  set valorDiaAnterior(double value) {
    _$valorDiaAnteriorAtom.reportWrite(value, super.valorDiaAnterior, () {
      super.valorDiaAnterior = value;
    });
  }

  late final _$valorDiaDebitoAtom =
      Atom(name: '_CreditosDebitosStoreBase.valorDiaDebito', context: context);

  @override
  double get valorDiaDebito {
    _$valorDiaDebitoAtom.reportRead();
    return super.valorDiaDebito;
  }

  @override
  set valorDiaDebito(double value) {
    _$valorDiaDebitoAtom.reportWrite(value, super.valorDiaDebito, () {
      super.valorDiaDebito = value;
    });
  }

  late final _$valorDiaAtom =
      Atom(name: '_CreditosDebitosStoreBase.valorDia', context: context);

  @override
  double get valorDia {
    _$valorDiaAtom.reportRead();
    return super.valorDia;
  }

  @override
  set valorDia(double value) {
    _$valorDiaAtom.reportWrite(value, super.valorDia, () {
      super.valorDia = value;
    });
  }

  late final _$valorMesAnteriorAtom = Atom(
      name: '_CreditosDebitosStoreBase.valorMesAnterior', context: context);

  @override
  double get valorMesAnterior {
    _$valorMesAnteriorAtom.reportRead();
    return super.valorMesAnterior;
  }

  @override
  set valorMesAnterior(double value) {
    _$valorMesAnteriorAtom.reportWrite(value, super.valorMesAnterior, () {
      super.valorMesAnterior = value;
    });
  }

  late final _$valorMesDebitoAtom =
      Atom(name: '_CreditosDebitosStoreBase.valorMesDebito', context: context);

  @override
  double get valorMesDebito {
    _$valorMesDebitoAtom.reportRead();
    return super.valorMesDebito;
  }

  @override
  set valorMesDebito(double value) {
    _$valorMesDebitoAtom.reportWrite(value, super.valorMesDebito, () {
      super.valorMesDebito = value;
    });
  }

  late final _$valorMesAtom =
      Atom(name: '_CreditosDebitosStoreBase.valorMes', context: context);

  @override
  double get valorMes {
    _$valorMesAtom.reportRead();
    return super.valorMes;
  }

  @override
  set valorMes(double value) {
    _$valorMesAtom.reportWrite(value, super.valorMes, () {
      super.valorMes = value;
    });
  }

  late final _$valorAnoAnteriorAtom = Atom(
      name: '_CreditosDebitosStoreBase.valorAnoAnterior', context: context);

  @override
  double get valorAnoAnterior {
    _$valorAnoAnteriorAtom.reportRead();
    return super.valorAnoAnterior;
  }

  @override
  set valorAnoAnterior(double value) {
    _$valorAnoAnteriorAtom.reportWrite(value, super.valorAnoAnterior, () {
      super.valorAnoAnterior = value;
    });
  }

  late final _$valorAnoDebitoAtom =
      Atom(name: '_CreditosDebitosStoreBase.valorAnoDebito', context: context);

  @override
  double get valorAnoDebito {
    _$valorAnoDebitoAtom.reportRead();
    return super.valorAnoDebito;
  }

  @override
  set valorAnoDebito(double value) {
    _$valorAnoDebitoAtom.reportWrite(value, super.valorAnoDebito, () {
      super.valorAnoDebito = value;
    });
  }

  late final _$valorAnoAtom =
      Atom(name: '_CreditosDebitosStoreBase.valorAno', context: context);

  @override
  double get valorAno {
    _$valorAnoAtom.reportRead();
    return super.valorAno;
  }

  @override
  set valorAno(double value) {
    _$valorAnoAtom.reportWrite(value, super.valorAno, () {
      super.valorAno = value;
    });
  }

  late final _$atualizaValoresAsyncAction = AsyncAction(
      '_CreditosDebitosStoreBase.atualizaValores',
      context: context);

  @override
  Future<dynamic> atualizaValores() {
    return _$atualizaValoresAsyncAction.run(() => super.atualizaValores());
  }

  @override
  String toString() {
    return '''
creditoRestante: ${creditoRestante},
valorDiaAnterior: ${valorDiaAnterior},
valorDiaDebito: ${valorDiaDebito},
valorDia: ${valorDia},
valorMesAnterior: ${valorMesAnterior},
valorMesDebito: ${valorMesDebito},
valorMes: ${valorMes},
valorAnoAnterior: ${valorAnoAnterior},
valorAnoDebito: ${valorAnoDebito},
valorAno: ${valorAno}
    ''';
  }
}
