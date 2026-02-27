import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../core/error/exception.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasource/auth_remote_datasource.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDatasource _authDataSource;

  AuthRepositoryImpl(this._authDataSource);

  @override
  Future<Either<Failure, String?>> createUser({
    required String email,
    required String password,
  }) async {
    try {
      final userId = await _authDataSource.createUser(email: email, password: password);
      return Right(userId);
    } on AuthException catch (e) {
      return Left(AuthFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on AppException catch (e) {
      return Left(AuthFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure("Erro inesperado: $e"));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteUser({
    required String email,
    required String currentPassword,
  }) async {
    try {
      await _authDataSource.deleteUser(email: email, currentPassword: currentPassword);
      return Right(unit);
    } on AuthException catch (e) {
      return Left(AuthFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on AppException catch (e) {
      return Left(AuthFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure("Erro inesperado: $e"));
    }
  }

  @override
  Future<Either<Failure, String?>> getCurrentUserEmail() async {
    try {
      final email = await _authDataSource.getCurrentUserEmail();
      return Right(email);
    } on AuthException catch (e) {
      return Left(AuthFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on AppException catch (e) {
      return Left(AuthFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure("Erro inesperado ao recuperar email do usuário: $e"));
    }
  }

  @override
  Future<Either<Failure, String?>> getCurrentUserId() async {
    try {
      final email = await _authDataSource.getCurrentUserId();
      return Right(email);
    } on AuthException catch (e) {
      return Left(AuthFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on AppException catch (e) {
      return Left(AuthFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure("Erro inesperado ao recuperar email do usuário: $e"));
    }
  }

  @override
  Future<Either<Failure, String>> login({required String email, required String password}) async {
    try {
      final result = await _authDataSource.login(email: email, password: password);
      return Right(result);
    } on AuthException catch (e) {
      return Left(AuthFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on AppException catch (e) {
      return Left(AuthFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure("Erro inesperado: $e"));
    }
  }

  @override
  Future<Either<Failure, Unit>> sendPasswordResetEmail(String email) async {
    try {
      await _authDataSource.sendPasswordResetEmail(email);
      return Right(unit);
    } on AuthException catch (e) {
      return Left(AuthFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on AppException catch (e) {
      return Left(AuthFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure("Erro inesperado: $e"));
    }
  }

  @override
  Future<Either<Failure, Unit>> signOut() async {
    try {
      await _authDataSource.signOut();
      return Right(unit);
    } on AuthException catch (e) {
      return Left(AuthFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on AppException catch (e) {
      return Left(AuthFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure("Erro inesperado: $e"));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateEmailAddress({
    required String newEmail,
    required String password,
  }) async {
    try {
      await _authDataSource.updateEmailAddress(newEmail: newEmail, password: password);
      return Right(unit);
    } on AuthException catch (e) {
      return Left(AuthFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on AppException catch (e) {
      return Left(AuthFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure("Erro inesperado: $e"));
    }
  }

  @override
  Future<Either<Failure, Unit>> updatePassword({
    required String newPassword,
    required String currentPassword,
  }) async {
    try {
      await _authDataSource.updatePassword(
        newPassword: newPassword,
        currentPassword: currentPassword,
      );
      return Right(unit);
    } on AuthException catch (e) {
      return Left(AuthFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on AppException catch (e) {
      return Left(AuthFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure("Erro inesperado: $e"));
    }
  }
}
