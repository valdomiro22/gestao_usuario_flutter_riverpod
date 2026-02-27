abstract class AuthRemoteDatasource {
  Future<String?> createUser({required String email, required String password});

  Future<String> login({required String email, required String password});

  Future<void> signOut();

  Future<String?> getCurrentUserId();

  Future<void> sendPasswordResetEmail(String email);

  Future<void> updateEmailAddress({required String newEmail, required String password});

  Future<void> updatePassword({required String newPassword, required String currentPassword});

  Future<void> deleteUser({required String email, required String currentPassword});

  Future<String?> getCurrentUserEmail();
}
