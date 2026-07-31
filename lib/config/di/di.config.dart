// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/auth/data/data_source/auth_remote_data_source.dart'
    as _i182;
import '../../features/auth/data/data_source/auth_remote_data_source_impl.dart'
    as _i508;
import '../../features/auth/data/repo/auth_repo_impl.dart' as _i984;
import '../../features/auth/domain/repo/auth_repo.dart' as _i170;
import '../../features/auth/domain/use_case/change_password_use_case.dart'
    as _i863;
import '../../features/auth/domain/use_case/edit_profile_use_case.dart'
    as _i259;
import '../../features/auth/domain/use_case/forget_password_use_case.dart'
    as _i90;
import '../../features/auth/domain/use_case/reset_password_use_case.dart'
    as _i149;
import '../../features/auth/domain/use_case/sign_in_use_case.dart' as _i847;
import '../../features/auth/domain/use_case/signup_use_case.dart' as _i371;
import '../../features/auth/domain/use_case/verify_reset_code_use_case.dart'
    as _i660;
import '../dio/dio_module.dart' as _i977;
import '../services/token_storage.dart' as _i2;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i977.NetworkDioHandler>(() => _i977.NetworkDioHandler());
    gh.lazySingleton<_i2.TokenStorage>(() => _i2.TokenStorage());
    gh.factory<_i182.AuthRemoteDataSource>(
      () => _i508.AuthRemoteDataSourceImpl(gh<_i977.NetworkDioHandler>()),
    );
    gh.factory<_i170.AuthRepo>(
      () => _i984.AuthRepoImpl(gh<_i182.AuthRemoteDataSource>()),
    );
    gh.factory<_i863.ChangePasswordUseCase>(
      () => _i863.ChangePasswordUseCase(gh<_i170.AuthRepo>()),
    );
    gh.factory<_i259.EditProfileUseCase>(
      () => _i259.EditProfileUseCase(gh<_i170.AuthRepo>()),
    );
    gh.factory<_i90.ForgetPasswordUseCase>(
      () => _i90.ForgetPasswordUseCase(gh<_i170.AuthRepo>()),
    );
    gh.factory<_i149.ResetPasswordUseCase>(
      () => _i149.ResetPasswordUseCase(gh<_i170.AuthRepo>()),
    );
    gh.factory<_i847.SignInUseCase>(
      () => _i847.SignInUseCase(gh<_i170.AuthRepo>()),
    );
    gh.factory<_i371.SignupUseCase>(
      () => _i371.SignupUseCase(gh<_i170.AuthRepo>()),
    );
    gh.factory<_i660.VerifyResetCodeUseCase>(
      () => _i660.VerifyResetCodeUseCase(gh<_i170.AuthRepo>()),
    );
    return this;
  }
}
