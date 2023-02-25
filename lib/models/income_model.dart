import 'package:hoja_tx_app_2/dataBase/crud.dart';
import 'package:hoja_tx_app_2/dataBase/db_table.dart';

class IncomeModel extends Crud {
  int? id;
  String? type= " ";
  String? enterCode= " ";
  IncomeModel({this.id, this.type, this.enterCode}):super(DBTable.income);


}
