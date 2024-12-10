import 'package:firebase_clean/domain/usecase/usecase.dart';
import 'package:injectable/injectable.dart';

import '../../data_repository.dart';
import '../../result.dart';

@injectable
class LogoutUseCase implements UseCase<void, void>{
  final DataRepository _dataRepository;

  const LogoutUseCase(this._dataRepository);

  @override
  Future<void> call(void params, {required ResultErrorCallback onError}) async{
    final result = await _dataRepository.logout();
    if (result is ResultError){
      onError(result.error!);
    }
  }

}