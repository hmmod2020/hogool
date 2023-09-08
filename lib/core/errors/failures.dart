import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable{}

class No_connection_failure extends Failure{
  @override
  // TODO: implement props
  List<Object?> get props => [];
} 

class server_failure extends Failure{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}