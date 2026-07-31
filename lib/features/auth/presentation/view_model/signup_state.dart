import '../../../../core/error/failures.dart';
import '../../domain/entities/auth_result.dart';

sealed class SignupState {}
class SignupInitial extends SignupState{}
class SignupLoading extends SignupState{}
class SignupSuccess extends SignupState{
SignupSuccess (this.authResult);
final AuthResult authResult;
}
class SignupError extends SignupState{
SignupError (this.failure);
final Failure failure;
}