import 'package:unify/argument/add-on-argument.dart';
import 'package:unify/argument/personal-detail-argument.dart';
import 'package:unify/argument/plan-argument.dart';

class DataHolderSingleton {
  PlanArgument? planArgument;
  String? address1;
  String? address2;
  String? postcode;
  String? city;
  String? state;

  AddOnArgument? addOnArgument;
  PersonalDetailArgument? personalDetailArgument;

  static final DataHolderSingleton _inst = DataHolderSingleton._internal();

  DataHolderSingleton._internal();


  factory DataHolderSingleton() {
    return _inst;
  }
}

