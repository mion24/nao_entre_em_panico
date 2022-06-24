// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AppStore on _AppStoreBase, Store {
  late final _$nomeAtom = Atom(name: '_AppStoreBase.nome', context: context);

  @override
  String get nome {
    _$nomeAtom.reportRead();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.reportWrite(value, super.nome, () {
      super.nome = value;
    });
  }

  late final _$initAsyncAction =
      AsyncAction('_AppStoreBase.init', context: context);

  @override
  Future<dynamic> init() {
    return _$initAsyncAction.run(() => super.init());
  }

  late final _$definirNomeAsyncAction =
      AsyncAction('_AppStoreBase.definirNome', context: context);

  @override
  Future<dynamic> definirNome(String nome) {
    return _$definirNomeAsyncAction.run(() => super.definirNome(nome));
  }

  @override
  String toString() {
    return '''
nome: ${nome}
    ''';
  }
}
