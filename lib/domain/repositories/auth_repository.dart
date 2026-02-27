import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';

abstract class AuthRepository {
  Future<Either<Failure, String?>> createUser({required String email, required String password});

  Future<Either<Failure, String>> login({required String email, required String password});

  Future<Either<Failure, Unit>> signOut();

  Future<Either<Failure, String?>> getCurrentUserId();

  Future<Either<Failure, String?>> getCurrentUserEmail();

  Future<Either<Failure, Unit>> sendPasswordResetEmail(String email);

  Future<Either<Failure, Unit>> updateEmailAddress({
    required String newEmail,
    required String password,
  });

  Future<Either<Failure, Unit>> updatePassword({
    required String newPassword,
    required String currentPassword,
  });

  Future<Either<Failure, Unit>> deleteUser({
    required String email,
    required String currentPassword,
  });
}
