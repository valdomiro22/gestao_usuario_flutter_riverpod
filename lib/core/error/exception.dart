abstract class AppException implements Exception {
  final String message;
  const AppException(this.message);
}

class CacheException extends AppException {
  const CacheException([super.message = 'Erro ao acessar cache local']);
}

class AuthException extends AppException {
  const AuthException([super.message = 'Erro no Firebase Auth']);
}

class FirestoreException extends AppException {
  const FirestoreException([super.message = 'Erro no Firebase Firestore']);
}

class StorageException extends AppException {
  const StorageException([super.message = 'Erro no Firebase Storage']);
}

class NetworkException extends AppException {
  const NetworkException([super.message = 'Sem conexão com a internet']);
}

class UnexpectedException extends AppException {
  const UnexpectedException([super.message = 'Erro inesperado']);
}