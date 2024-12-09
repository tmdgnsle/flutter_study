// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:clean_architecture_exam/data/data_repository_impl.dart'
    as _i865;
import 'package:clean_architecture_exam/data/local/local_data_source.dart'
    as _i669;
import 'package:clean_architecture_exam/data/remote/remote_data_source.dart'
    as _i798;
import 'package:clean_architecture_exam/di/app_module.dart' as _i510;
import 'package:clean_architecture_exam/di/hive/hive_service.dart' as _i1067;
import 'package:clean_architecture_exam/domain/data_repository.dart' as _i539;
import 'package:clean_architecture_exam/domain/usecase/clear_dog_images_usecase.dart'
    as _i703;
import 'package:clean_architecture_exam/domain/usecase/delete_dog_image_usecase.dart'
    as _i524;
import 'package:clean_architecture_exam/domain/usecase/get_dog_images_usecase.dart'
    as _i185;
import 'package:clean_architecture_exam/domain/usecase/save_dog_image_usecase.dart'
    as _i217;
import 'package:clean_architecture_exam/presentation/local_image/bloc/local_dog_images_bloc.dart'
    as _i906;
import 'package:clean_architecture_exam/presentation/remote_image/bloc/remote_dog_images_bloc.dart'
    as _i907;
import 'package:dio/dio.dart' as _i361;
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
    await gh.factoryAsync<_i1067.HiveService>(
      () => appModule.hiveService,
      preResolve: true,
    );
    gh.lazySingleton<_i361.Dio>(() => appModule.dio);
    gh.lazySingleton<_i798.RemoteDataSource>(() => appModule.remoteDataSource);
    gh.singleton<_i669.LocalDataSource>(
      () => _i669.LocalDataSource(gh<_i1067.HiveService>()),
      dispose: (i) => i.dispose(),
    );
    gh.lazySingleton<_i539.DataRepository>(() => _i865.DataRepositoryImpl(
          gh<_i798.RemoteDataSource>(),
          gh<_i669.LocalDataSource>(),
        ));
    gh.factory<_i217.SaveDogImageUseCase>(
        () => _i217.SaveDogImageUseCase(gh<_i539.DataRepository>()));
    gh.factory<_i524.DeleteDogImageUseCase>(
        () => _i524.DeleteDogImageUseCase(gh<_i539.DataRepository>()));
    gh.factory<_i185.GetDogImagesUseCase>(
        () => _i185.GetDogImagesUseCase(gh<_i539.DataRepository>()));
    gh.factory<_i703.ClearDogImagesUseCase>(
        () => _i703.ClearDogImagesUseCase(gh<_i539.DataRepository>()));
    gh.factory<_i906.LocalDogImagesBloc>(() => _i906.LocalDogImagesBloc(
          gh<_i185.GetDogImagesUseCase>(),
          gh<_i524.DeleteDogImageUseCase>(),
          gh<_i703.ClearDogImagesUseCase>(),
        ));
    gh.factory<_i907.RemoteDogImagesBloc>(() => _i907.RemoteDogImagesBloc(
          gh<_i185.GetDogImagesUseCase>(),
          gh<_i217.SaveDogImageUseCase>(),
        ));
    return this;
  }
}

class _$AppModule extends _i510.AppModule {}
