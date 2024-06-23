import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/use_cases/user_sign_up.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final UserSignUp _userSignUp;

  AuthBloc({required UserSignUp userSignUp,})
      : _userSignUp = userSignUp, // for initialise  private variables (new way)
        super(AuthInitial()) {
        on<AuthSignup>((event, emit) async {
          final res = await _userSignUp(
            UserSignUpParams(name: event.name, email: event.email, password: event.password),
          );
          res.fold((l) => emit(AuthFailure(l.message)), (uid) => emit(AuthSuccess(uid)));
        });
  }
}
