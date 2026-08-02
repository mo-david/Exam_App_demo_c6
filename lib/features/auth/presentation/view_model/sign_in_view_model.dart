import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:untitled/features/auth/domain/use_case/sign_in_use_case.dart';
import 'package:untitled/features/auth/presentation/view_model/sign_in_state.dart';

import '../../domain/entities/sign_in_request.dart';

@injectable
class SignInViewModel extends Cubit<SignInState> {
final SignInUseCase signInUseCase;
SignInViewModel(this.signInUseCase):super (SignInInitial());

void signIn({required String email,required String password})async{
  emit (SignInLoading());

  await Future.delayed(const Duration(seconds: 2));
  final request = SignInRequest(email: email, password: password);
  final result = await signInUseCase.execute(request: request);
switch (result){
  case Left(value: final failure):
    emit(SignInError(failure));

  case Right(value: final authResult):
    emit(SignInSuccess(authResult));
}

}

}