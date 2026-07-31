import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:untitled/features/auth/domain/use_case/sign_in_use_case.dart';
import 'package:untitled/features/auth/presentation/view_model/sign_in_state.dart';

@injectable
class SignInViewModel extends Cubit<SignInState> {
final SignInUseCase signInUseCase;
SignInViewModel(this.signInUseCase):super (SignInInitial());
}
