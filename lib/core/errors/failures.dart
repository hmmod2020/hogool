import 'package:equatable/equatable.dart';
import 'package:hogool/core/utils/app_string.dart';

abstract class Failure extends Equatable{ 
  late String failureMsg;
}

class No_connection_failure extends Failure{
  @override
String failureMsg =AppString.errorInternet;
  
  // TODO: implement props
  List<Object?> get props => [failureMsg];
  
} 

class server_failure extends Failure{
  @override
  String failureMsg;
  server_failure({required this.failureMsg});
  List<Object?> get props => [failureMsg];

}