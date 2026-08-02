import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:untitled/features/auth/domain/use_case/reset_password_use_case.dart';
import 'package:untitled/features/auth/domain/use_case/verify_reset_code_use_case.dart';

import '../../domain/use_case/forget_password_use_case.dart';
import 'forgot_password_state.dart';

@injectable

class ForgotPasswordViewModel extends Cubit<ForgotPasswordState>{

final ForgetPasswordUseCase forgotPasswordUseCase;
final VerifyResetCodeUseCase verifyResetCodeUseCase;
final ResetPasswordUseCase resetPasswordUseCase;

ForgotPasswordViewModel(
    this.forgotPasswordUseCase,
    this.verifyResetCodeUseCase,
    this.resetPasswordUseCase) :super(ForgotPasswordInitial());


}