import 'dart:developer' as dev;

import 'package:dartz/dartz.dart';
import 'package:feature_autentication/domain/repositories/auth_repository.dart';

import '../../core/error/failure.dart';
import '../entities/usuario_entity.dart';
import '../repositories/usuario_repository.dart';

class RecuperarUsuarioUseCase {
  final UsuarioRepository _repository;
  final AuthRepository _authRepository;

  RecuperarUsuarioUseCase(this._repository, this._authRepository);

  Future<Either<Failure, UsuarioEntity>> call() async {
    final uidReslt = await _authRepository.getCurrentUserId();

    return uidReslt.fold(
      (failure) => Left(failure),
      (uidUsuario) async {
        dev.log('uid do auth: $uidReslt');
        if (uidUsuario == null) {
          return Left(AuthFailure('ID so usuario retornado do Auth é null'));
        }

        final usuarioResult = await _repository.getUsuario(uidUsuario);
        return usuarioResult.fold(
          (failure) => Left(failure),
          (usuario) {
        dev.log('nome usuario pesquizado: ${usuario?.nome}');
            if (usuario == null) return Left(AuthFailure('Usuário não encontrado'));

            return Right(usuario);
          }
        );
      }
    );
  }
}
