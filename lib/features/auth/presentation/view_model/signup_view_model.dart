import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:untitled/features/auth/domain/use_case/signup_use_case.dart';
import 'package:untitled/features/auth/presentation/view_model/signup_state.dart';

import '../../domain/entities/sign_up_request.dart';

@injectable
class SignupViewModel extends Cubit <SignupState> {
  final SignupUseCase signupUseCase;
  SignupViewModel (this.signupUseCase): super (SignupInitial());

void signUp({
required String username,
required String firstName,
required String lastName,
required String email,
required String password,
required String rePassword,
required String phone})async{
  emit (SignupLoading());
  final request = SignUpRequest(
    username: username,
    firstName: firstName,
    lastName: lastName,
    email: email,
    password: password,
    rePassword: rePassword,
    phone: phone
  );
  final result = await signupUseCase.execute(request: request);
  switch (result){
    case Left(value: final failure):
      emit(SignupError(failure));
    case Right(value: final authResult):
      emit(SignupSuccess(authResult));
  }

}
}
