class CreditosDebitosModel {
  CreditosDebitosModel({
    this.id,
    this.data,
    this.valor,
    this.tipo,
    this.descricao,
  });

  int? id;
  DateTime? data;
  double? valor;
  String? tipo;
  String? descricao;
}
