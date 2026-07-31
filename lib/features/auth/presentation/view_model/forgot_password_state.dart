import '../../domain/entities/auth_result.dart';

sealed class ForgotPasswordState {}
class ForgotPasswordInitial extends ForgotPasswordState{}
class ForgotPasswordLoading extends ForgotPasswordState{}
class ForgotPasswordSuccess extends ForgotPasswordState{
ForgotPasswordSuccess(this.authResult);
final AuthResult authResult;
}
class ForgotPasswordError extends ForgotPasswordState{

}