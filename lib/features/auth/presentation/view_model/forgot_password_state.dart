import '../../../../core/error/failures.dart';
import '../../domain/entities/auth_result.dart';

sealed class ForgotPasswordState {}
class ForgotPasswordInitial extends ForgotPasswordState{}
class ForgotPasswordLoading extends ForgotPasswordState{}
class ForgotPasswordSuccess extends ForgotPasswordState{
ForgotPasswordSuccess(this.authResult);
final AuthResult authResult;
}
class ForgotPasswordError extends ForgotPasswordState{
  ForgotPasswordError(this.failure);
  final Failure failure;
}