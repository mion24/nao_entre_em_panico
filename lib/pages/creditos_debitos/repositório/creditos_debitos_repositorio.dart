import 'package:nao_entre_em_panico/core/tema/data/datasources/sqlite/banco_sqlite.dart';
import 'package:nao_entre_em_panico/pages/creditos_debitos/models/creditos_debitos_model.dart';

class CreditosDebitosRepositorio {
  Future obterValor() async {}

  Future salvarCreditoDebito(CreditosDebitosModel model) async {
    try {
      var sql = '''
        INSERT OR REPLACE INTO 
          creditos_debitos (
            Id, Data, Valor, Tipo, Descricao
          )
        VALUES(?, ?, ?, ?, ?)
''';

      final db = await BancoSQLite().obterConexao();
      db.rawInsert(sql, [
        model.id,
        model.data,
        model.valor,
        model.tipo,
        model.descricao,
      ]);
    } catch (e) {
      print('error');
    }
  }
}
