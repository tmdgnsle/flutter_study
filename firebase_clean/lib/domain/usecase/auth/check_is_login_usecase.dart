import 'package:firebase_clean/domain/data_repository.dart';
import 'package:firebase_clean/domain/usecase/usecase.dart';

import '../../result.dart';

class CheckIsLoginUseCase implements UseCase<bool, void>{
  final DataRepository _dataRepository;

  const CheckIsLoginUseCase(this._dataRepository);

  @override
  Future<bool> call(void params, {required ResultErrorCallback onError}) async{
    final result = await _dataRepository.isLogin();
    if (result is ResultError){
      onError(result.error!);
    }
    return result.data!;
  }
  
  
}