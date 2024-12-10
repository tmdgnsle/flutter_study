import 'package:firebase_clean/domain/data_repository.dart';
import 'package:firebase_clean/domain/result.dart';
import 'package:firebase_clean/domain/usecase/todo/dto/update_todo_dto.dart';
import 'package:firebase_clean/domain/usecase/usecase.dart';
import 'package:injectable/injectable.dart';

@injectable
class UpdateTodoItemUseCase implements UseCase<void, UpdateTodoDto> {
  final DataRepository _dataRepository;

  const UpdateTodoItemUseCase(this._dataRepository);

  @override
  Future<void> call(UpdateTodoDto params,
      {required ResultErrorCallback onError}) async {
    final result = await _dataRepository.updateTodoItem(params);
    if (result is ResultError) {
      onError(result.error!);
    }
  }
}