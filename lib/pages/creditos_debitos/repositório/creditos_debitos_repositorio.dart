import 'package:nao_entre_em_panico/core/helpers/converte_data.dart';
import 'package:nao_entre_em_panico/core/helpers/filtro_valor_enum.dart';
import 'package:nao_entre_em_panico/core/tema/data/datasources/sqlite/banco_sqlite.dart';
import 'package:nao_entre_em_panico/pages/creditos_debitos/models/creditos_debitos_model.dart';

class CreditosDebitosRepositorio {
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
        ConverteData.database(model.data),
        model.valor,
        model.tipo,
        model.descricao,
      ]);
    } catch (e) {
      print('error');
    }
  }

  Future<double> obterCreditoRestante() async {
    try {
      const sql = '''
        SELECT
          (
            IFNULL(SUM(a.credito), 0.0) - IFNULL(SUM(b.debito), 0.0)
          ) valor
        FROM
          (SELECT SUM(valor) credito FROM creditos_debitos WHERE tipo = 'Crédito') a
          INNER JOIN 
          (SELECT SUM(valor) debito FROM creditos_debitos WHERE tipo = 'Débito') b 
''';
      final db = await BancoSQLite().obterConexao();
      final resultMap =
          await db.rawQuery(sql); //passando a consulta no bacno pela var sql

      if (resultMap.isEmpty) {
        return 0.0;
      }

      final valores =
          List<double>.from(resultMap.map((e) => e['valor'] as double));
      return valores[0];
    } catch (e) {
      print('i mane deu erro');
      return 0.0;
    }
  }

  Future<double> obterValor(FILTRO_VALOR_ENUM filtro,
      {String? tipo = 'Débito'}) async {
    final dataHoje = DateTime.now();
    try {
      String _filtro = " WHERE data = '${ConverteData.database(dataHoje)}' ";

      switch (filtro) {
        case FILTRO_VALOR_ENUM.DIA_ANTERIOR:
          _filtro =
              " WHERE data = '${ConverteData.database(DateTime(dataHoje.year, dataHoje.month, dataHoje.day - 1))}'";
          break;

        case FILTRO_VALOR_ENUM.MES_ANTERIOR:
          _filtro =
              " WHERE data BETWEEN '${ConverteData.database(DateTime(dataHoje.year, dataHoje.month - 1, 01))}' AND '${ConverteData.database(DateTime(dataHoje.year, dataHoje.month - 1, 31))}'";
          break;
        case FILTRO_VALOR_ENUM.MES_ATUAL:
          _filtro =
              " WHERE data BETWEEN '${ConverteData.database(DateTime(dataHoje.year, dataHoje.month, 01))}' AND '${ConverteData.database(DateTime(dataHoje.year, dataHoje.month, 31))}'";
          break;
        case FILTRO_VALOR_ENUM.ANO_ANTERIOR:
          _filtro =
              " WHERE data BETWEEN '${ConverteData.database(DateTime(dataHoje.year - 1, 01, 01))}' AND '${ConverteData.database(DateTime(dataHoje.year - 1, 12, 31))}'";
          break;
        case FILTRO_VALOR_ENUM.ANO:
          _filtro =
              " WHERE data BETWEEN '${ConverteData.database(DateTime(dataHoje.year - 1, 01, 01))}' AND '${ConverteData.database(DateTime(dataHoje.year, 12, 31))}'";

          break;
        default:
          break;
      }

    final sql = '''
      SELECT
        IFNULL(SUM(valor), 0.0) valor
      FROM
        creditos_debitos
      $_filtro
        AND tipo = '$tipo'
''';

  final db = await BancoSQLite().obterConexao();
      final resultMap =
          await db.rawQuery(sql); //passando a consulta no bacno pela var sql

      if (resultMap.isEmpty) {
        return 0.0;
      }

      final valores =
          List<double>.from(resultMap.map((e) => e['valor'] as double));
      return valores[0];

    } catch (e) {
      print('error');
      return 0.0;
    }
  }
}
