class ServerException implements Exception{
  String errorMessage ;
  ServerException({required this.errorMessage});
}
class No_connection_exception implements Exception{} 