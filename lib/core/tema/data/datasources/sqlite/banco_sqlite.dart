import 'package:nao_entre_em_panico/core/tema/data/datasources/sqlite/tabelas/creditos_debitos.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class BancoSQLite {
  Future<Database> obterConexao() async {
    final String caminhoBanco = await getDatabasesPath();
    final String caminhoFinal = join(caminhoBanco, 'nao_entre_em_sh0k.db');

    return await openDatabase(
      caminhoFinal,
      version: 1,
      onCreate: _quandoCriar,
      onOpen: _quandoAbrir,
      onUpgrade: _quandoAtualizar,
    );
  }

  Future<void> _quandoCriar(Database db, int versao) async {
    await db.execute(TabelaCreditosDebitos.creditos_debitos);
  }

  Future<void> _quandoAbrir(Database db) async {
    print('versão do banco sqlite: ${await db.getVersion()}');
  }

  Future<void> _quandoAtualizar(
      Database db, int versaoAntiga, int versaoNova) async {}
}
