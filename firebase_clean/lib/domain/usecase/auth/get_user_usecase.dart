import 'package:firebase_clean/domain/entity/user_profile.dart';
import 'package:firebase_clean/domain/result.dart';
import 'package:firebase_clean/domain/usecase/usecase.dart';
import 'package:injectable/injectable.dart';

import '../../data_repository.dart';

@injectable
class GetUserUseCase implements UseCase<UserProfile, void>{
  final DataRepository _dataRepository;

  const GetUserUseCase(this._dataRepository);

  @override
  Future<UserProfile> call(void params, {required ResultErrorCallback onError}) async{
    final result = await _dataRepository.getUser();
    if (result is ResultError){
      onError(result.error!);
    }
    return result.data!;
  }
  }

