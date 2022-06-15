class TabelaCreditosDebitos {
  static const creditos_debitos = 'CREATE TABLE creditos_debitos (' +
      ' Id INTEGER NOT NULL,' +
      ' Data TEXT NULL,' +
      'Valor REAL NULL' +
      'Tipo TEXT NULL' +
      'Descricao TEXT NULL' +
      'CONSTRAINT pk_creditos_debitos PRIMARY KEY (Id)' +
      ');';
}
