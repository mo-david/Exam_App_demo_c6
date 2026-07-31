import 'package:untitled/core/error/failures.dart';
import 'package:untitled/features/auth/domain/entities/auth_result.dart';

sealed class SignInState {}
  class SignInInitial extends SignInState{}
  class SignInLoading extends SignInState{}
  class SignInSuccess extends SignInState{
  SignInSuccess(this.authResult);
  final AuthResult authResult;
  }
  class SignInError extends SignInState{
SignInError(this.failure);
final Failure failure;
}