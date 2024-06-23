import 'package:blog_app/core/error/failure.dart';
import 'package:blog_app/core/usecase/use_case.dart';
import 'package:blog_app/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class UserSignUp implements UseCase<String, UserSignUpParams> {
  final AuthRepository authRepository;

  UserSignUp(this.authRepository);

  @override
  Future<Either<Failure, String>> call(UserSignUpParams userSignUpParams) async {
    return await authRepository.signUpWithEmailPassword(
        name: userSignUpParams.name,
        email: userSignUpParams.email,
        password: userSignUpParams.password);
    }
  }

  class UserSignUpParams {
    final String email;
    final String password;
    final String name;

    UserSignUpParams(
        {required this.name, required this.email, required this.password});
  }
