import 'package:stock_trading_app/components/condition_object.dart';

class Filter {
  String? name;

  String? code;

  String? explain;
  String? type;
  String? filterDateTime;
  int? numOfConditions = 0;
  ConditionObject? conditions;

  Filter(
      {this.name,
      this.code,
      this.explain,
      this.type,
      this.filterDateTime,
      this.numOfConditions,
      this.conditions});
}
