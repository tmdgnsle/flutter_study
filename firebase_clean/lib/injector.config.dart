// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_clean/data/data_repository_impl.dart' as _i985;
import 'package:firebase_clean/data/data_source/auth_data_source.dart' as _i127;
import 'package:firebase_clean/data/data_source/todo_data_source.dart' as _i344;
import 'package:firebase_clean/di/app_module.dart' as _i450;
import 'package:firebase_clean/di/firebase_service.dart' as _i341;
import 'package:firebase_clean/domain/data_repository.dart' as _i486;
import 'package:firebase_clean/domain/usecase/auth/get_user_usecase.dart'
    as _i307;
import 'package:firebase_clean/domain/usecase/auth/login_usecase.dart' as _i584;
import 'package:firebase_clean/domain/usecase/auth/logout_usecase.dart'
    as _i157;
import 'package:firebase_clean/domain/usecase/auth/register_usecase.dart'
    as _i147;
import 'package:firebase_clean/domain/usecase/todo/add_todo_item_usecase.dart'
    as _i455;
import 'package:firebase_clean/domain/usecase/todo/delete_todo_item_usecase.dart'
    as _i687;
import 'package:firebase_clean/domain/usecase/todo/get_todo_item_usecase.dart'
    as _i710;
import 'package:firebase_clean/domain/usecase/todo/update_todo_item_usecase.dart'
    as _i192;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    await gh.factoryAsync<_i341.FirebaseService>(
      () => appModule.firebaseService,
      preResolve: true,
    );
    gh.singleton<_i344.TodoDataSource>(
        () => _i344.TodoDataSource(gh<_i341.FirebaseService>()));
    gh.singleton<_i127.AuthDataSource>(
        () => _i127.AuthDataSource(gh<_i341.FirebaseService>()));
    gh.factory<_i486.DataRepository>(() => _i985.DataRepositoryImpl(
          gh<_i127.AuthDataSource>(),
          gh<_i344.TodoDataSource>(),
        ));
    gh.factory<_i147.RegisterUseCase>(
        () => _i147.RegisterUseCase(gh<_i486.DataRepository>()));
    gh.factory<_i584.LoginUseCase>(
        () => _i584.LoginUseCase(gh<_i486.DataRepository>()));
    gh.factory<_i157.LogoutUseCase>(
        () => _i157.LogoutUseCase(gh<_i486.DataRepository>()));
    gh.factory<_i307.GetUserUseCase>(
        () => _i307.GetUserUseCase(gh<_i486.DataRepository>()));
    gh.factory<_i710.GetTodoItemUseCase>(
        () => _i710.GetTodoItemUseCase(gh<_i486.DataRepository>()));
    gh.factory<_i455.AddTodoItemUseCase>(
        () => _i455.AddTodoItemUseCase(gh<_i486.DataRepository>()));
    gh.factory<_i687.DeleteTodoItemUseCase>(
        () => _i687.DeleteTodoItemUseCase(gh<_i486.DataRepository>()));
    gh.factory<_i192.UpdateTodoItemUseCase>(
        () => _i192.UpdateTodoItemUseCase(gh<_i486.DataRepository>()));
    return this;
  }
}

class _$AppModule extends _i450.AppModule {}
