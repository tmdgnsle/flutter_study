import 'package:firebase_clean/domain/data_repository.dart';
import 'package:firebase_clean/domain/entity/todo_item.dart';
import 'package:firebase_clean/domain/result.dart';
import 'package:firebase_clean/domain/usecase/todo/dto/update_todo_dto.dart';
import 'package:firebase_clean/domain/usecase/usecase.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetTodoItemUseCase implements UseCase<List<TodoItem>, void> {
  final DataRepository _dataRepository;

  const GetTodoItemUseCase(this._dataRepository);

  @override
  Future<List<TodoItem>> call(void params,
      {required ResultErrorCallback onError}) async {
    final result = await _dataRepository.getTodoItems();
    if (result is ResultError) {
      onError(result.error!);
    }
    return result.data!;
  }
}