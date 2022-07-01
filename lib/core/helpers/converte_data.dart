import 'package:intl/intl.dart';

class ConverteData{
  static final _formatoDataBase = DateFormat('yyyy/MM/dd00:00:00,000');
  static final _formatoMesAno = DateFormat('MM-yyyy');

static String? database(DateTime? data) {
  if(data == null) return '';

  return _formatoDataBase.format(data);

}

static String? mesAno(DateTime? data) {
  if (data == null) return '';
  return _formatoMesAno.format(data);
}

}
