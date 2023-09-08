import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
abstract class NetworkManager{
 Future<bool> get isConnected ;
}

class NetworkManagerCheck implements NetworkManager{
  InternetConnectionCheckerPlus internetChecker;
  NetworkManagerCheck({required this.internetChecker});
  @override
  // TODO: implement isConnected
  Future<bool> get isConnected => internetChecker.hasConnection;
}